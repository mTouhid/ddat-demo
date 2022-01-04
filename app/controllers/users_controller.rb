class UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid? && @user.password != params[:user][:password2]
      flash.now[:danger] = "Passwords do not match."
      render 'new'
    else
      if @user.save
        session[:user_id] = @user.id
        session[:expires_at] = Time.current + 30.minutes 
        flash[:success] = "Congratulations. Your registration has been successful."
        redirect_to root_path
      else
        flash.now[:danger] = "Something went wrong. Please correct the marked fields below."
        render 'new'
      end
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      flash[:success] = "Account information has been updated successfully."
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end

  def destroy
    if @user.destroy
      flash[:success] = "Account has been deleted."
      session[:user_id] = nil
      redirect_to root_path
    else
      flash.now[:danger] = "Unable to delete."
      redirect_to root_path
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:firstname, :lastname, :job_title, :department, :email, :password, :is_admin)
  end
end
