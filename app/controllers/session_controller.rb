class SessionController < ApplicationController
  def create
    user = user.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      flash[:success] = "Successfully logged in!"
    else
      flash[:danger] = "Invalid username/password"
    end
  end
  
  def destroy
    flash[:info] = "Logged out!"
  end
end
