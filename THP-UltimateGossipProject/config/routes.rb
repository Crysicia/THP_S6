Rails.application.routes.draw do
  root 'static_pages_controller#home'
  resources :gossips
end
