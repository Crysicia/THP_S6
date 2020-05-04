class HomeController < ApplicationController
  def index
    StartScrap.new.perform
    if params[:name]
      @crypto = Crypto.where('name LIKE ?', "%#{params[:name]}%")
    else
      @crypto = Crypto.all
    end
  end
  private
  def crypto_params
    params.permit(:name)
  end
end
