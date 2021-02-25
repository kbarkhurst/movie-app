class Api::ActorsController < ApplicationController
  def actor1_action
    @actor_one = Actor.first
    render "actors.json.jb"
  end
end
