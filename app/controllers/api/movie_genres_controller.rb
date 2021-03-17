class Api::MovieGenresController < ApplicationController
  def create
    @movie_genre = MovieGenre.new (
      movie_id: params[:movie_id],
    )
    if @movie_genre.save
      render "show.json.jb"
    else
      render json: { errors: @movie_genre.errors.full_messages }, status: 406
    end
  end
end
