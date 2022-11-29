class DropBookings < ActiveRecord::Migration[7.0]
  def change
    drop_table :bookings, if_exists: true
  end
end
