require 'gossip'
class ApplicationController < Sinatra::Base
  get '/' do
    erb :index, locals: {gossips: Gossip.all}
  end
  
  get '/gossips/new' do
    erb :new_gossip
  end
  
  post '/gossips/new/' do
    Gossip.new(params['gossip_author'], params['gossip_content'], []).save
    redirect '/'
  end
  
  get '/gossips/*/' do |int|
    erb :gossip, locals: {gossip: Gossip.find(int.to_i)}
  end
  
  get '/gossips/edit/*' do |int|
    erb :edit_gossip, locals: {gossip: Gossip.find(int.to_i)}
  end
  
  post '/gossips/edit/*/' do |int|
    Gossip.edit(params['gossip_content'], int.to_i)
    redirect '/'
  end
  
  post '/gossips/new/comment/*/' do |int|
    Gossip.add_comment(params['comment'], int.to_i)
    redirect "/gossips/#{int}/"
  end
end