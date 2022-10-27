Rails.application.routes.draw do
  resources :services
  resources :orders, only: [:index, :show, :create, :update, :destroy]
  resources :use_profiles
  resources :deliveries, only: [:index, :show, :create, :update, :destroy]
  resources :trackings
  resources :trackings, only: [:index, :show, :create, :update, :destroy]
  resources :receipts
  resources :users
  # resources :users
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
