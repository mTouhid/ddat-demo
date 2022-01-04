class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:firstname, :lastname, :job_title, :department, :email, :password))
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "Registration successful."
      redirect_to root_path
    else
      flash.now[:error] = "Registration failed."
      render 'new'
    end
  end
end
