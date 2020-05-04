Rails.application.routes.draw do
  root 'static_pages#index'
  get 'answer', to: 'static_pages#answer'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  get 'signup', to: 'users#new'
  resources :users
end
