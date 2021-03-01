class Api::MoviesController < ApplicationController
  def all_movies
    all = Movie.all

    @movies_all = all.map do |movie|
      {
        title: movie.title,
        year: movie.year,
        plot: movie.plot,
      }
    end

    render "all_movies.json.jb"
  end

  def single_movie
    @movie_data = Movie.first
    render "single_movie.json.jb"
  end
end
