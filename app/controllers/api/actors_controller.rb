class Api::ActorsController < ApplicationController
  validates :first_name, length: { minimum: 2 }
  validates :last_name, length: { minimum: 2 }
  validates :known_for, presence: true
  validates :age, length: { minimum: 13 }

  def index
    @actors = Actor.all
    render "index.json.jb"
  end

  def create
    @actor = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      gender: params[:gender],
      age: params[:age],
    )
    @actor.save
    render "show.json.jb"
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

    @actor.save
    render "show.json.jb"
  end

  def destroy
    actor_id = params[:id]
    @actor = Actor.find_by(id: actor_id)
    @actor.destroy
    render json: { message: "The actor has been deleted" }
  end
end
