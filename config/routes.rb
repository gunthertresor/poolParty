Rails.application.routes.draw do
  # root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: "pools#index"
  resources :pools, except: [:edit, :update, :index] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:update, :show, :edit, :destroy]
  namespace :owner do
    resources :bookings, only: [:index, :update, :edit]
  end
end
