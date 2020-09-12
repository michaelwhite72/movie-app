Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/single_actor_path" => "actors#single_actor_action"

    get "/movies" => "movies#index"

    get "/movies/:id" => "movies#show"

    get "/query_actor_params" => "actors#query_show"
    
    get "/actors/:id" => "actors#show"

    post "body_actors_query" => "actors#body_show"



  end
end
