Rails.application.routes.draw do
  
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  resources :posts do
    resources :comments
  end
  root "posts#index"
  
  get "/about", to: "pages#about"
  get "/signup", to: "users#new"
end