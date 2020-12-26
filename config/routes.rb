Rails.application.routes.draw do
  root 'images#home'
  get '/signup', to: 'users#new'
  resources :users
end