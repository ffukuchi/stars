Stars::Application.routes.draw do

  root  "teachers#index"

  resources :teachers  do
    resources :reviews
  end
  
  resources :students 

end
