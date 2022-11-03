Rails.application.routes.draw do
<<<<<<< HEAD
  resources :services
  resources :orders
  resources :use_profiles
  resources :deliveries, only: [:index, :show, :create, :update, :destroy]
  resources :trackings
  resources :trackings, only: [:index, :show, :create, :update, :destroy]
  resources :receipts
  resources :users
  # resources :users
=======
  resources :users
  # resources :admin
  # get "/me", to: "users#show"
  
>>>>>>> 68444e8920f71fb9a71279bf0e2a39d1a674a67c
  devise_for :admins, path: 'admin', path_names:{
    sign_in: 'login',
    sign_out: 'signout',
    registration: 'signup'
  },
  controllers:{
    sessions: 'admin/sessions',
    password: 'admin/passwords',
    registrations: 'admin/registrations'
  }

  devise_for :users, path: 'users', path_names:{
    sign_in: 'login',
    sign_out: 'signout',
    registration: 'signup'
  },

  controllers:{
    sessions: 'users/devise/sessions',
    password: 'users/devise/passwords',
    registrations: 'users/devise/registrations'
  }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
