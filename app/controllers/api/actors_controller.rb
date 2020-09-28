class Api::ActorsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    @actors = Actor.all.order(age: :desc)
    render "index.json.jb"
  end

  def show
    @actor = Actor.find(params[:id])
    render "show.json.jb"
  end

  def create
    @actor = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      gender: params[:gender],
      age: params[:age],
      known_for: params[:known_for],
      movie_id: params[:movie_id],
    )
    if @actor.save
      render "show.json.jb"
    else
      render json: { message: @actor.errors.full_messages }, status: 422
    end
  end

  def update
    @actor = Actor.find(params[:id])

    @actor.first_name = params[:first_name] || @actor.first_name
    @actor.last_name = params[:last_name] || @actor.last_name
    @actor.gender = params[:gender] || @actor.gender
    @actor.age = params[:age] || @actor.age
    @actor.known_for = params[:known_for] || @actor.known_for
    @actor.movie_id = params[:movie_id] || @actor.movie_id

    if @actor.save
      render "show.json.jb"
    else
      render json: { message: @actor.errors.full_messages }, status: 422
    end
  end

  def destroy
    actor = Actor.find(params[:id])
    actor.destroy
    render json: { message: "Actor successfully deleted" }
  end
end
