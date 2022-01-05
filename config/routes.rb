Rails.application.routes.draw do
  get 'assessments/new'
  get 'sessions/new'
  get 'users/new'
  get 'home/index'
  get 'registration', to: 'users#new'
  resources :users, except: [:new]
  get 'signin', to: 'sessions#new'
  post 'signin', to: 'sessions#create'
  resources :assessments, only: [:show, :new, :create, :edit, :update]
  delete 'sessions', to: 'sessions#destroy'
  root 'home#index'
end
