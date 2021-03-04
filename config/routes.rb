Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/about' => 'pages#about'
  get '/donate' => 'pages#donate'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :products, only: [:index, :show, :new, :create, :edit, :update] do
    resources :bookings, only: [:create]
  end
  get "/dashboard/", to: "users#dashboard"

  get "/seekers/new", to: "users#new", as: :new_seeker
  get "/seekers/", to: "users#index", as: :seekers
  get "/seekers/:id", to: "users#show", as: :seeker
  post "/seekers/:id", to: "requests#create"

  post "/seekers", to: "users#create"
  get "/seekers/:id/edit", to: "users#edit", as: :edit_seeker
  patch "/seekers/:id", to: "users#update"

  resources :bookings, only: [:index]
  resources :charities, only: [:show]
end
