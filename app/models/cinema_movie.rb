class CinemaMovie < ApplicationRecord
  belongs_to :movie
  belongs_to :cinema
end
