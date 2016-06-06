Rails.application.routes.draw do

  root 'warships#index'

  resources :warships
  resources :countrys
  resources :battles
  resources :reviews

  resources :users

  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy'


end
