class Movie < ApplicationRecord
  validates :title, length: { minimum: 2 }
  validates :year, presence: true
  validates :plot, length: { minimum: 10 }
end
