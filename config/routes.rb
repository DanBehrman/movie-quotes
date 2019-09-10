Rails.application.routes.draw do
  #application routes
  get '/', to: 'static#welcome'

  #players routes
  get '/players', to: 'players#index'
  get '/signup', to: 'players#new', as: 'signup'
  get '/players/new', to: 'players#new'
  get '/players/:id', to: 'players#show', as: 'player'
  get '/players/:id/edit', to: 'players#edit', as: 'edit_player'

  post '/players/', to: 'players#create'
  patch '/players/:id', to: 'players#update'
  delete '/players/:id', to: 'players#destroy'

  #sessions routes
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'

  #game routes
  post '/games', to: 'games#create'
  get '/games/:id/:status', to: 'games#guess'

end
