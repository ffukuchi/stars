Stars::Application.routes.draw do

  root  "posts#index"

  resources :teachers 

  resources :students do
     resources :posts 
  end

end
