Rails.application.routes.draw do
  devise_for :users
  resources :prototypes, only: [:index, :create, :new]
  root to: 'prototypes#index'
end
