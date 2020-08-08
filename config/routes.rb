Rails.application.routes.draw do
  root 'users#new'
  resources :users, only: [:new, :create, :show]
  resources :events, except: [:edit, :destroy]
end
