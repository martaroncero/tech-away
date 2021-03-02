Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/about' => 'pages#about'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :products, only: [:index, :show, :new, :create, :edit, :update] do
     resources :bookings, only: [:create]
  end

  resources :users, only: [:new, :create, :edit, :update, :show, :index]
  resources :bookings, only: [:index]
  resources :charities, only: [:show]
end
