class DropTableReservationDate < ActiveRecord::Migration
  def change
  	drop_table :reservation_dates
  end
end
