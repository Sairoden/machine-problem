class Cinema < ApplicationRecord
  validates :title, presence: true, length: { minimum: 3, maximum: 50}

  has_many :cinema_movies
  has_many :movies, through: :cinema_movies
end
