require 'dotenv'
require 'twitter'
class TwitbotService
  def initialize
    Dotenv.load
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key = ENV['TWITTER_API_KEY']
      config.consumer_secret = ENV['TWITTER_API_SECRET']
      config.access_token = ENV['TWITTER_AUTH_TOKEN']
      config.access_token_secret = ENV['TWITTER_AUTH_SECRET']
    end
  end
  
  def gather
    search = "Formation code"
    gathered_handles = []
    @client.search(search).collect do |tweet|
      if tweet.lang == "fr"
        gathered_handles << tweet.user.screen_name
      end
    end
    self.update(gathered_handles)
  end
  
  def tweet
    handles = self.retrieve
    handles.take(10).each do |user|
      @client.update("@#{user.nickname} Hey! Toi aussi viens apprendre à coder et à développer des sites web en seulement trois mois : https://bit.ly/2RUpbTQ")
      user.message = 1
    end
  end
  
  def update(handles)
    handles.each do |h|
      unless Tweet.find_by(nickname: h)
        Tweet.create!({nickname: h, message: 0})
      end
    end
  end
  
  def retrieve
    Tweet.where(message: 0)
  end
end

