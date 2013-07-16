DJApp::Application.routes.draw do

  resources :users
  resources :music_tracks do
    resources :comments, only: [:create, :destroy]
  end
  resources :genres
  resources :sessions, only: [:create]


  get '/logout', to: 'sessions#destroy'

  root to: 'home#home'

end
