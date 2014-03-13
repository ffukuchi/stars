Stars::Application.routes.draw do

  root  "posts#index"
  resources :posts
  resources :students
  resources :teachers
  resources :schools

end
