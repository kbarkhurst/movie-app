class Movie < ApplicationRecord
  has_many :actors #returns array of many actors
  validates :title, length: { minimum: 2 }
  validates :year, presence: true
  validates :plot, length: { minimum: 10 }
end
