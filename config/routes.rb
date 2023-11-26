Rails.application.routes.draw do
  get 'cart_items/new'
  resources :products
  get 'top/main'
  root 'top#main'
  resources :cart_items, only: [:new, :create, :destroy]
  # Defines the root path route ("/")
  # root "articles#index"
end
