class Api::ActorsController < ApplicationController
  def index
    all_actors = Actor.all
    @actors = all_actors
    render "index.json.jb"
  end

  def display_firstactor
    actor_first = Actor.first
    @output = actor_first
    render "actors.json.jb"
  end

  def actor_byid
    id = 7
    actor_id = Actor.find_by(id: id)
    @output = actor_id
    render "actors.json.jb"
  end

  def param_actor_byfirstname
    input_message = params[:first_name].capitalize
    actor = Actor.find_by(first_name: input_message)
    # @output = actor
    @output = actor
    render "actors.json.jb"
  end

  def param_actor_byid
    input_message = params[:id]
    actor = Actor.find_by(id: input_message)
    # @output = actor
    @output = actor
    render "actors.json.jb"
  end
end
