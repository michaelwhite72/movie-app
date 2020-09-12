Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/single_actor_path" => "actors#single_actor_action"

    get "/movies" => "movies#index"

    get "/movies/:id" => "movies#show"
  end
end
