Rails.application.routes.draw do
  resources :users
  post "/users/login", to: "users#login"
  get "/users/verify", to: "users#verify"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
