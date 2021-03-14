class Movie < ApplicationRecord
  has_many :actors #returns array of many actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres

  validates :title, length: { minimum: 2 }
  validates :year, presence: true
  validates :plot, length: { minimum: 10 }
end
