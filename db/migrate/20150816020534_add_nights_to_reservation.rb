class AddNightsToReservation < ActiveRecord::Migration
  def change
  	add_column :reservations, :nights, :integer
  end
end
