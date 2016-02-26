Rails.application.routes.draw do

  root to: "pages#home", as: "home"

  get "/pages/:page", to: "pages#faq"

  get "/login", to: "sessions#new", as: "login"
  post "/sessions", to: "sessions#create"
  delete "/logout", to: "sessions#destroy", as: "logout"

  get "/sign_up", to: "users#new", as: "sign_up"

  get "/liquors", to: "ingredients#liquors", as: "liquors"
  get "/mixers", to: "ingredients#mixers", as: "mixers"
  get "/ingredients/:id", to: "ingredients#show", as: "ingredient"

  get "/users/:id/recipes", to: "recipes#user", as: "user_recipe"

  resources :users, :recipes

end
