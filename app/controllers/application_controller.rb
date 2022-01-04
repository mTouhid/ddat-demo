class ApplicationController < ActionController::Base

  helper_method :current_season, :current_user, :logged_in?, :require_logged_in

  def current_season 
    AssessmentSeason.current_season.first
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

  def require_logged_in
    if !logged_in? || session[:expires_at].to_time < Time.current
      session[:user_id] = nil
      flash[:danger] = "Sorry, you need to be logged in to perform this operation."
      redirect_to signin_path
    end
  end
end
