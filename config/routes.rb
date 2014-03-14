Stars::Application.routes.draw do

  root  "posts#index"

  resources :teachers do
    resources :posts 
  end

  resources :students

  resources :schools

end
