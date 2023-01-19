Rails.application.routes.draw do
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 402ac273c0c5815f4bf86c91d241e04074ec257d
  resources :user_profiles
  resources :users
  resources :orders
  resources :use_profiles
  resources :deliveries
<<<<<<< HEAD
=======
=======
>>>>>>> 402ac273c0c5815f4bf86c91d241e04074ec257d
  resources :orders, only: [:index, :show, :create, :update, :destroy]
  resources :services
  resources :use_profiles, only: [:show, :create, :update]
  resources :deliveries, only: [:index, :show, :create, :update, :destroy]
  resources :trackings
  resources :trackings, only: [:index, :show, :create, :update, :destroy]
<<<<<<< HEAD
>>>>>>> f00bfeb06b75872601ee403550d58c39abdf34bf
=======
>>>>>>> 402ac273c0c5815f4bf86c91d241e04074ec257d
  resources :receipts
  resources :services
  # resources :admin
  get "/me", to: "users#show"

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
