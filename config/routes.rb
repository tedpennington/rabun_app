Rails.application.routes.draw do
  resources :reviews
  devise_for :users
  resources :renters
  get 'pages/about'

  get 'pages/contact'

  root 'renters#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
