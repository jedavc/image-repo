Rails.application.routes.draw do
  root 'images#index'
  get '/signup', to: 'users#new'
  resources :images
  get '/users', to: 'users#index'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end