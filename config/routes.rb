Rails.application.routes.draw do

  resources :recipes
  resources :ingredients
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/profile' => 'users#profile'
  post '/recipes' => 'recipes#create'
  patch '/edit' => 'recipes#update'
  resources :users

end
