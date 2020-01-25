Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #this will create full CRUD for posts

  root to: 'posts#index'

  resources :posts

  #making the index for posts the primary root while developing the posts portion of the site



end
