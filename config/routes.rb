Stars::Application.routes.draw do

  resource :session

  root  "teachers#index"

  resources :teachers  do
    resources :reviews
  end
  
  resources :students 

  get 'signup' => 'students#new'

end
