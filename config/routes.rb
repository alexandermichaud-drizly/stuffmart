Rails.application.routes.draw do
  root 'products#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'

  get 'account', to: 'customers#show'

  resources :products 
  resources :customers
end
