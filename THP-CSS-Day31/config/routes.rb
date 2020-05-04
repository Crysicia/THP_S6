Rails.application.routes.draw do
  root 'static#home'
  get '/components', to: 'static#components'
end
