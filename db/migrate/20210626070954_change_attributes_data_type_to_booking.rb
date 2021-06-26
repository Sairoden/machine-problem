class ChangeAttributesDataTypeToBooking < ActiveRecord::Migration[6.1]
  def change
    change_column :bookings, :seat_number, :integer
    change_column :bookings, :time_slots, :integer
  end
end
