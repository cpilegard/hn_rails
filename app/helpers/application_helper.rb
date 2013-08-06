module ApplicationHelper

  def current_user
    if session[:user]
      @current_user = User.find_by_id(session[:user])
    else
      nil
    end
  end

end
