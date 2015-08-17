class RemoveFieldsFromReservationsTable < ActiveRecord::Migration
  def change
  	remove_column :reservations, :guests
   	remove_column :reservations, :nights
   	remove_column :reservations, :departure_date 	
  end
end
