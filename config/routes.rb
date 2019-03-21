Rails.application.routes.draw do

  resources :recipes
  resources :ingredients
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/profile' => 'users#profile'
  post '/recipes' => 'recipes#create'
  get '/recipes' => 'recipes#index'
  resources :users

end
