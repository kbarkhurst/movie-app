Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/first_actor" => "actors#display_firstactor"
    get "/actor_byid" => "actors#actor_byid"
    get "/all_movies" => "movies#all_movies"
    get "/first_movie" => "movies#first_movie"
  end
end
