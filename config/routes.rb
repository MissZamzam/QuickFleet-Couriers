Rails.application.routes.draw do
  resources :trackings, only: [:index]
  resources :receipts
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
