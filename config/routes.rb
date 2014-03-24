Stars::Application.routes.draw do

  root  "teachers#index"

  resources :teachers  do
    resources :reviews
  end
  
  resources :students 

  get 'signup' => 'students#new'

end
