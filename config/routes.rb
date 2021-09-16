Rails.application.routes.draw do

  root 'welcome#index'

  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

  resources :figures
  resources :users, only: [:new, :create]
  
end
