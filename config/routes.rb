Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
   namespace :api do
    get "/users" => "users#index"
    post "/users" => "users#create"
    post "/users/:id" => "users#update"
    get "/products/:id" => "products#show"
    get "/products/" => "products#index"
    post "/products/" => "products#create"
    patch "/products/:id" => "products#update"
    delete "/products/:id" => "products#destroy"

   end
end
