class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings
  has_many :movies, through: :bookings

  validates :first_name, presence: true, length: { minimum: 3, maximum: 50}
  validates :last_name, presence: true, length: { minimum: 3, maximum: 50}
  validates :mobile_number, presence: true, length: { minimum: 11, maximum: 11}
  
  def full_name
    if first_name || last_name
      "#{first_name} #{last_name}"
    else
    "Anonymous"
    end
  end
  
end
