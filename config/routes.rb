Rails.application.routes.draw do
  devise_for :users
  # get 'prototypes/index'
  resources :prototypes do
    resources :comments, only: :create
  end
  # resources :prototypes, only:[:index, :new, :create, :show, :edit, :update, :destroy]
  root to: "prototypes#index"
  resources :users, only: :show
end
