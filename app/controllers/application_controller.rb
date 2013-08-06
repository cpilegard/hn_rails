class ApplicationController < ActionController::Base
  protect_from_forgery

  # private
  
  def current_user
    @current_user ||= session[:user] &&
      User.find_by_id(session[:user])
  end
end
