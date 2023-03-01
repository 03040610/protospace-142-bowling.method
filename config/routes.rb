Rails.application.routes.draw do
  devise_for :users
  resources :prototypes, only: [:index, :create, :new, :destroy]
  root to: 'prototypes#index'
  resources :users, only: :show
end
