Rails.application.routes.draw do
get 'cible', to: 'template#cible'
root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
