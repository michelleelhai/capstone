Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
   namespace :api do
    get "/users" => "users#index"
    post "/users" => "users#create"
    post "/users/profile" => "users#update"
    get "/products/:id" => "products#show"
    get "/products/" => "products#index"
    post "/products/" => "products#create"
    patch "/products/:id" => "products#update"
    delete "/products/:id" => "products#destroy"
    get "/conditions/:id" => "conditions#show"
    get "/conditions/" => "conditions#index"
    post "/conditions/" => "conditions#create"
    patch "/conditions/:id" => "conditions#update"
    delete "/conditions/:id" => "conditions#destroy"
    get "/solutions/:id" => "solutions#show"
    get "/solutions/" => "solutions#index"
    post "/solutions/" => "solutions#create"
    patch "/solutions/:id" => "solutions#update"
    delete "/solutions/:id" => "solutions#destroy"
    post "/sessions" => "sessions#create"

   end
end
