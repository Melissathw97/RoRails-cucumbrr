Rails.application.routes.draw do
  
  resources :sessions, only: [:create]
  resources :users
  resources :posts do
    resources :comments
  end
  root "posts#index"
  
  get "/about", to: "pages#about"
  get "/signup", to: "users#new"
  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"
end