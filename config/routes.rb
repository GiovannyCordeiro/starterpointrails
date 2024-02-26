Rails.application.routes.draw do
  # first form
  # get '/', controller: 'home', action: 'index'
  # second form
  root 'home#index'

  get '/vehicles', controller: 'vehicles', action: 'index'

  get '/vehicles/new', controller: 'vehicles', action: 'new'

  post '/vehicles', controller: 'vehicles', action: 'create'

  get '/vehicles/:id', controller: 'vehicles', action: 'show'

  get '/vehicles/:id/edit', controller: 'vehicles', action: 'edit'

  put '/vehicles/:id', controller: 'vehicles', action: 'update'
  patch '/vehicles/:id', controller: 'vehicles', action: 'update'

  delete '/vehicles/:id', controller: 'vehicles', action: 'destroy'
end
