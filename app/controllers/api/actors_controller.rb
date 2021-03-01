class Api::ActorsController < ApplicationController
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
end
