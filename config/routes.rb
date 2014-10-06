Rails.application.routes.draw do

  root 'cars#index'
  resources :manufacturers
  resources :cars
end
