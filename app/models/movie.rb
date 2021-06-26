class Movie < ApplicationRecord
  validates :title, presence: true, length: { minumum: 3, maximum: 50 }
  validates :length, presence: true, length: { minumum: 3, maximum: 50 }
  validates :description, presence: true, length: { minumum: 10, maximum: 300} 

  has_many :bookings
  has_many :users, through: :bookings

  has_many :cinema_movies
  has_many :cinemas, through: :cinema_movies
end

