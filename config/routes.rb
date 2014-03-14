Stars::Application.routes.draw do

  root  "teachers#index"

  resources :teachers 
  resources :reviews
  resources :students 

end
