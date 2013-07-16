DJApp::Application.routes.draw do

  resources :users
  resources :music_tracks
  resources :genres
  resources :sessions, only: [:create]
  get '/logout', to: 'sessions#destroy'

  root to: 'home#home'

end
