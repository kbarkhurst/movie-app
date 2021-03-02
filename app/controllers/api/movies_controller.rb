class Api::MoviesController < ApplicationController
  def index
    all_movies = Movie.all
    @movies = all_movies
    render "index.json.jb"
  end

  def create
    @movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
    )
    @movie.save
    render "show.json.jb"
  end

  def first_movie
    @output = Movie.first
    render "movies.json.jb"
  end
end
