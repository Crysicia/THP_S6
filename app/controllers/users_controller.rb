class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "You've successfully signed up, welcome !"
      redirect_to root_path
    else
      flash[:danger] = "Sign-up failed, please try again."
      redirect_to signup_path
    end
  end
  
  def destroy
    @user.destroy
    flash[:info] = "Account successfully deleted, sorry to see you go."
  end
  
  private
  
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
