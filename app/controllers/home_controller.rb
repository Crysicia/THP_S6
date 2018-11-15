class HomeController < ApplicationController
  def index
    TwitbotService.new.gather
    TwitbotService.new.tweet
  end
end

