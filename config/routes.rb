Rails.application.routes.draw do
  get 'top/main'
  post 'top/login'
  get 'top/logout'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users
  resources :tweets
  root 'tweets#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
