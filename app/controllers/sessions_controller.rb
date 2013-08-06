class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_username(params[:session][:username])
    if user.password == params[:session][:password]
      session[:user] = user.id
      redirect_to root_url
    else
      render 'new'
    end
  end

  def destroy
    session[:user] = nil
    redirect_to root_url
  end
end