Rails.application.routes.draw do

  root to: "ingredients#index"

  get "/login", to: "sessions#new", as: "login"
  post "/sessions", to: "sessions#create"
  delete "/logout", to: "sessions#destroy", as: "logout"

  get "/sign_up", to: "users#new", as: "sign_up"

  get "/liquors", to: "ingredients#index", as: "liquors"
  get "/mixers", to: "ingredients#mixers", as: "mixers"

  resources :users, :recipes, :ingredients

end
