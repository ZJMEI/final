Rails.application.routes.draw do

  root 'warships#index'

  resources :warships

  
end
