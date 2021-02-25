class Api::ActorsController < ApplicationController
  def actor1_action
    @id = 1
    @actor_id = Actor.find_by(id: @id)

    @actor_one = Actor.first
    render "actors.json.jb"
  end
end
