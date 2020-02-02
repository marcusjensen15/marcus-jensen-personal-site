Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #in the future I'll want to populate my users database with a single user already in there. That will be my login.
  #in production i won't have a signup, only sign in

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
  #this will create full CRUD for posts

  root to: 'posts#index'

  resources :posts

  #making the index for posts the primary root while developing the posts portion of the site



end
