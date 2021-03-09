class Api::ActorsController < ApplicationController
  def index
    @actors = Actor.order("age DESC")
    render "index.json.jb"
  end

  def create
    @actor = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      gender: params[:gender],
      age: params[:age],
      movie_id: params[:movie_id],
    )
    if @actor.save
      render "show.json.jb"
    else
      render json: { errors: @actor.errors.full_messages }, status: 406
    end
  end

  def show
    input_message = params[:id]
    @actor = Actor.find_by(id: input_message)
    render "show.json.jb"
  end

  def update
    actor_id = params[:id]
    @actor = Actor.find_by(id: actor_id)

    @actor.first_name = params[:first_name] || @actor.first_name
    @actor.last_name = params[:last_name] || @actor.last_name
    @actor.known_for = params[:known_for] || @actor.known_for
    @actor.gender = params[:gender] || @actor.gender
    @actor.age = params[:age] || @actor.age
    @actor.movie_id = params[:movie_id] || @actor.movie_id

    if @actor.save
      render "show.json.jb"
    else
      render json: { errors: @actor.errors.full_messages }, status: 406
    end
  end

  def destroy
    actor_id = params[:id]
    @actor = Actor.find_by(id: actor_id)
    @actor.destroy
    render json: { message: "The actor has been deleted" }
  end
end
