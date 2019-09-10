Rails.application.routes.draw do
  #application routes
  get '/', to: 'static#welcome'


  #players routes
  #resources :players
  get '/players', to: 'players#index'
  get '/signup', to: 'players#new', as: 'signup'
  get '/players/new', to: 'players#new'
  get '/players/:id', to: 'players#show', as: 'player'
  get '/players/:id/edit', to: 'players#edit', as: 'edit_player'

  post '/players/', to: 'players#create'
  patch '/players/:id', to: 'players#update'
  delete '/players/:id', to: 'players#destroy'

  #sessions routes
  #resoures :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'

end
