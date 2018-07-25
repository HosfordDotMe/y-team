class ApplicationController < ActionController::Base

  helper_method :current_user

  def current_user
    if session[:user_id]
      User.find(session[:user_id])
    else
      nil
    end
  end

  def require_user
    redirect_to sessions_path unless current_user
  end

end
