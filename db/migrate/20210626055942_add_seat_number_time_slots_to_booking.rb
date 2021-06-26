class AddSeatNumberTimeSlotsToBooking < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :seat_number, :string
    add_column :bookings, :time_slots, :string
  end
end
