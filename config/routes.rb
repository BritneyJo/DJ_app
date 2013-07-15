DJApp::Application.routes.draw do

  resources :users
  resources :music_tracks
  resources :genres

  root to: 'home#home'

end
