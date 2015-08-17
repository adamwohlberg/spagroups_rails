class AddGuestsNightsToReservations < ActiveRecord::Migration
  def change
  	add_column :reservations, :guests, :integer
  	add_column :reservations, :nights, :integer
  end
end
