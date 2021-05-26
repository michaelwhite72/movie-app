class Api::MovieGenresController < ApplicationController
  def create
    @moviegenre = MovierailGenre.new(
      movie_id: params[:movie_id],
      genre_id: params[:genre_id],
    )
    if @moviegenre.save
      render "show.json.jb"
    else
      render json: { message: @movie.errors.full_messages }, status: 422
    end
  end
end
