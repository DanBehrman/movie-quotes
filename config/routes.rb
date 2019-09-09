Rails.application.routes.draw do
  #application routes
  get '/', to: 'static#welcome'


  #players routes
  resources :players

  #sessions routes
  #resoures :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'

end
