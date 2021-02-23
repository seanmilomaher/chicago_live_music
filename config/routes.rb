Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    post "/venues" => "venues#create"
    get "/venues" => "venues#index"
    get "/venues/:id" => "venues#show"

    post "/sessions" => "sessions#create"
    
  end
end
