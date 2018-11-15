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
  
  def gather(search)
    gathered_handles = []
    @client.search(search).collect do |tweet|
      if tweet.lang == "fr"
        gathered_handles << tweet.user.screen_name
      end
    end
    self.update(gathered_handles)
  end
  
  def tweet()
    @client.update("@#{tweet.user.screen_name} Hey! Toi aussi viens apprendre à coder et à développer des sites web en seulement trois mois : https://bit.ly/2RUpbTQ")
  end
  
  def update(handles)
    handles.each do |h|
      unless Twitbot.find_by(handle: h)
        pp h
        Twitbot.create!({handle: h, send: 0})
      end
    end
    self.retrieve
  end
  
  def retrieve
    p Twitbot.all(conditions: {send: 0})
  end
end

