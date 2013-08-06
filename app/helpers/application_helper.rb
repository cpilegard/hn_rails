module ApplicationHelper

  def current_user
    @current_user ||= session[:user] &&
      User.find_by_id(session[:user])
  end
  
end
