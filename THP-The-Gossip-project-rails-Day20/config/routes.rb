Rails.application.routes.draw do
  root 'general#home'
  get 'home', to: 'general#home'
  get 'home/:name', to: 'general#home'
  get 'team', to: 'general#team'
  get 'contact', to: 'general#contact'
  get 'gossips/:id', to: 'gossip#show'
end
