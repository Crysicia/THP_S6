class UsersController < ApplicationController
  def new
    
  end
  
  def create
    p params
    User.create(username: params[:name], email: params[:email], bio: params[:bio])
  end
end
