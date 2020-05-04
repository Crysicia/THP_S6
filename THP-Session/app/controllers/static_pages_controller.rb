class StaticPagesController < ApplicationController
  def answer
    unless logged_in?
      flash[:danger] = "You must be logged in to access this page"
      redirect_to login_path
    end
  end
end
