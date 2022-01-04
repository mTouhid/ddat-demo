class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:sessions][:email])
    if user && user.authenticate(params[:sessions][:password])
      session[:user_id] = user.id
      session[:expires_at] = Time.current + 30.minutes 
      flash[:success] = "Sign in successful."
      redirect_to root_path
    else
      flash.now[:danger] = "There was a problem with your credentials. Please try again."
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "Sign out successful."
    redirect_to root_path
  end
end
