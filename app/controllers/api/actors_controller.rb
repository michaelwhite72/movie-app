class Api::ActorsController < ApplicationController

def single_actor_action
  @single_actor = Actor.find_by(id: 7)
  render "single_actor.json.jb"
end

def query_show
  @single_actor = Actor.find(params[:id])
  render "single_actor.json.jb"
end


def show
  @single_actor = Actor.find(params[:id])
  render "single_actor.json.jb"
end

def body_show
@single_actor =Actor.find(params[:id])
render "single_actor.json.jb"
end

end
