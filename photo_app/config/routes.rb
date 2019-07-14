Rails.application.routes.draw do
# EXAMPLE HTML ROUTE
# get "/photos" => "photos#index"
# EXAMPLE JSON ROUTE WITH API NAMESPACE
# namespace :api do
# get "/photos" => "photos#index"
# end

  namespace :api do
    get "/photos" => "photos#index"
    get "/photos/:id" => "photos#show"
    post "/photos" => "photos#create"
    delete "/photos/:id" => "photos#delete"
  end
end
