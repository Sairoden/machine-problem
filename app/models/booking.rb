class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :movie

  validates :seat_number, presence: true, uniqueness: true
  validates :time_slots, presence: true
  
end
