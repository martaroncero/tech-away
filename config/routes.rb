Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/about' => 'pages#about'
  get '/donate' => 'pages#donate'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :products, only: [:index, :show, :new, :create, :edit, :update] do
    resources :bookings, only: [:create]
  end

  get "/my-listings", to: "products#my_listings", as: :my_listings
  get "/my-listings/:id/complete", to: "products#mark_as_complete", as: :mark_product_as_complete

  get "/seekers/new", to: "users#new", as: :new_seeker
  get "/seekers/", to: "users#index", as: :seekers
  get "/seekers/:id", to: "users#show", as: :seeker
  post "/seekers/:id", to: "requests#create"

  post "/seekers", to: "users#create"
  get "/seekers/:id/edit", to: "users#edit", as: :edit_seeker
  patch "/seekers/:id", to: "users#update"

  post "/seekers/:id/bookings", to: "bookings#seeker_show", as: :seeker_bookings

  resources :bookings, only: [:index]
  resources :charities, only: [:show]

  get "/bookings/:id/complete", to: "bookings#mark_as_complete", as: :mark_booking_as_complete
  get "/bookings/:id/archived", to: "bookings#mark_as_archived", as: :mark_booking_as_archived
end
