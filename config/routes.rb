Rails.application.routes.draw do
  root 'placements#index'

  resources :placements

  post 'comments/create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
end
