Rails.application.routes.draw do
  
  resources :users
  resources :posts do
    resources :comments
  end
  root "posts#index"
  
  get "/about", to: "pages#about"
  get "/signup", to: "users#new"
end