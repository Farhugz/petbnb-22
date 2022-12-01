class AddApprovedToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :approved, :boolean
  end
end
