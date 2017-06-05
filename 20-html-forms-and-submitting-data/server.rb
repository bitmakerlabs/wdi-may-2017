require './film.rb'
require 'sinatra'
require 'pry'

get '/' do
  erb :index
end

get '/films' do
  @film = Film.find_by(title: params[:title])
  erb :search_results
end

get '/films/:kittens' do
  "GET request: #{params}"
end

post '/films' do
  Film.create({title: params[:title], description: params[:description], available: params[:available], rating: params[:rating], country: params[:country]})

  redirect to('/')
end

put '/films' do
  "PUT request: #{params}"
end

delete '/films' do
  film = Film.find(params[:id])
  film.delete
  redirect to('/')
end
