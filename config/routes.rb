Rails.application.routes.draw do
  
  devise_for :users
  resources :renters do
    resources :reviews
  end
  
  # get '/signin', to: 'devise/sessions#new'

  get 'pages/about'

  get 'pages/contact'

  root 'renters#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
