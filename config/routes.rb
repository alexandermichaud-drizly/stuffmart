Rails.application.routes.draw do
  root 'products#index'

  resources :products 
  resources :customers
end
