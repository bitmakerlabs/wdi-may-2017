class FilmsController < ApplicationController
  def index
    @films = Film.all
  end

  def new
    @film = Film.new
  end

  def create
    @film = Film.new

    @film.title = params[:film][:title]
    @film.director = params[:film][:director]
    @film.year = params[:film][:year]

    if @film.save
      redirect_to films_path
    end
  end

  def edit
    @film = Film.find(params[:id])
  end
end
