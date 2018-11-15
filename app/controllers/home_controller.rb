class HomeController < ApplicationController
  def index
    TwitbotService.new.gather("Apprendre code")
  end
end

