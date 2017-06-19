class UsersController < ApplicationController

  before_action :find_user, only: %i(edit update)

  def new
    @user = User.new
  end

  def create
    @user = User.new

    @user.email                 = params[:user][:email]
    @user.password              = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]

    if @user.save
      # default behaviour of flash works on a redirect
      flash[:notice] = 'Account successfully created!'
      redirect_to root_url
    else
      # flash.now works on the same request
      flash.now[:error] = 'Sorry, try again!'
      render :new
    end
  end

  def edit
    unless @user
      flash[:error] = 'You are not logged in'
      redirect_to root_url
    end
  end

  def update
    unless @user
      flash[:error] = 'You are not logged in'
      redirect_to root_url and return
    end

    @user.email                 = params[:user][:email]
    @user.password              = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]

    if @user.save
      flash[:notice] = 'Account successfully updated!'
      redirect_to root_url
    else
      flash.now[:error] = 'Sorry, try again!'
      render :edit
    end
  end

private

  def find_user
    @user = current_user
  end

end
