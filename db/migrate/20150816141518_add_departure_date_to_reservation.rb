class AddDepartureDateToReservation < ActiveRecord::Migration
  def change
  	add_column :reservations, :departure_date, :date
  end
end
