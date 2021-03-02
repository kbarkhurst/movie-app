Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    #get "actors" - Gets all the actors
    get "/actors" => "actors#index"

    get "/first_actor" => "actors#display_firstactor"
    get "/actor_byid" => "actors#actor_byid"

    #get "movies" - Gets all the movies
    get "/movies" => "movies#index"

    get "/first_movie" => "movies#first_movie"
    get "/firstname_params" => "actors#param_actor_byfirstname"
    get "/firstname_params/:first_name" => "actors#param_actor_byfirstname"
    get "/byid_params" => "actors#param_actor_byid"
    put "/byid_params" => "actors#param_actor_byid"
  end
end
