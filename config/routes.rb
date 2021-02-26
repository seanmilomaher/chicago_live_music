Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    post "/venues" => "venues#create"
    get "/venues" => "venues#index"
    get "/venues/:id" => "venues#show"
    patch "/venues/:id" => "venues#update"
    delete "/venues/:id" => "venues#destroy"

    post "/bands" => "bands#create"
    get "/bands" => "bands#index"
    get "/bands/:id" => "bands#show"
    patch "/bands/:id" => "bands#update"
    delete "/bands/:id" => "bands#destroy"


    post "/sessions" => "sessions#create"
    
  end
end