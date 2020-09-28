class Movie < ApplicationRecord

  # validates :year, :title, :plot,presence: true
  # validates :year, numericality: true
  # validates :plot, length: {in: 10..500}

  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres

end
