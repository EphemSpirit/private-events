Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  root 'sessions#new'
  resources :users, only: [:new, :create, :show]
  resources :events, except: [:edit, :destroy]
end
