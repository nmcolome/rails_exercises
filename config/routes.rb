Rails.application.routes.draw do

  get '/dogs', to: 'dogs#index'
  get '/dogs/new', to: 'dogs#new'
  get '/dogs/:id', to: 'dogs#show'
  get '/dogs/:id/edit', to: 'dogs#edit'
  post '/dogs', to: 'dogs#create'
  patch '/dogs/:id', to: 'dogs#update'
  delete '/dogs/:id', to: 'dogs#destroy'

  get '/dogs/:dog_id/tricks', to: 'tricks#index'
  get '/dogs/:dog_id/tricks/new', to: 'tricks#new'
  post '/dogs/:dog_id/tricks', to: 'tricks#create'
end
