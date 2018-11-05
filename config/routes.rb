Rails.application.routes.draw do
  root 'static_pages#index'
  
  get 'login', to: 'session#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  get 'signup', to: 'users#new'
end
