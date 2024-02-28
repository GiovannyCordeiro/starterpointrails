Rails.application.routes.draw do
  # first form
  # get '/', controller: 'home', action: 'index'
  # get '/', to 'about#index'
  # second form
  root 'home#index'

  resources :vehicles
end
