Rails.application.routes.draw do
  root to: 'items#index'

  resources :items, only: [:index, :new, :create, :destroy, :edit, :update]
  resources :user, only: [:show, :new, :create, :destroy, :edit, :update]
end
