class Api::MoviesController < ApplicationController
  def all_movies
    movies_all = Movie.all

    @output = movies_all.map do |movie|
      {
        title: movie.title,
        year: movie.year,
        plot: movie.plot,
      }
    end

    render "movies.json.jb"
  end

  def first_movie
    @output = Movie.first
    render "movies.json.jb"
  end
end
