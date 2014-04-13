Opentree::Application.routes.draw do
  get "dashboard/index"
  get '/trees/:id', to: 'trees#show'

  root 'dashboard#index'
end
