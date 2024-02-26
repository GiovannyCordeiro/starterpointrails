Rails.application.routes.draw do
  # first form
  # get '/', controller: 'home', action: 'index'
  # second form
  root 'home#index'

  resources :vehicles, only: %i[ index ]
end
