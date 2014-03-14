Stars::Application.routes.draw do

  root  "posts#index"

  resources :posts 
  resources :teachers 
  resources :students 

end
