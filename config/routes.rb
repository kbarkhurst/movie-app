Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do

    #GET "/actors" - Gets all the actors
    get "/actors" => "actors#index"

    # POST "/actors" - Creates a new actor, add it to our database
    post "/actors" => "actors#create"

    # GET "/actors/3" - Just get one specific actor (that already exists)
    get "/actors/:id" => "actors#show"

    # PATCH "/actors/3" - Updates a specific actor
    patch "/actors/:id" => "actors#update"

    # DELETE "/actors/3" - Deletes a specific actor
    delete "/actors/:id" => "actors#destroy"

    ######MOVIES#######
    #GET "movies" - Gets all the movies
    get "/movies" => "movies#index"
    # GET "/movies/3" - Just get one specific movie (that already exists)
    get "/movies/:id" => "movies#show"
    # POST "/movies" - Creates a new movie, add it to our database
    post "/movies" => "movies#create"
    # PATCH "/movies/3" - Updates a specific movie
    patch "/movies/:id" => "movies#update"
    # DELETE "/movies/3" - Deletes a specific movie
    delete "/movies/:id" => "movies#destroy"

    ###### USERS #######
    post "/users" => "users#create"

    ###### SESSIONS #######
    post "/sessions" => "sessions#create"
  end
end
