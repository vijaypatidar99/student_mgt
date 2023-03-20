Rails.application.routes.draw do
  get "employee/about"
  get "employee/terms"
  get "employee/home"
  root "welcome#index"
  get "welcome/index2"
  get "welcome/index3"

  resources :students do
     get :posts
    get :show1
     get :comment
    post :new
  end
end
