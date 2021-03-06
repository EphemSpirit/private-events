Rails.application.routes.draw do
  root 'sessions#new'
  resources :users, only: [:new, :create, :show]
  resources :events, except: [:edit, :destroy]
  resources :sessions, only: [:new, :create, :destroy]
end
