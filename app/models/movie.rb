class Movie < ApplicationRecord

  # validates :year, :title, :plot,presence: true
  # validates :year, numericality: true
  # validates :plot, length: {in: 10..500}

  has_many :actors

end
