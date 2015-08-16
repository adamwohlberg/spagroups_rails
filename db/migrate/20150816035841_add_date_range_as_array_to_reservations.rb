class AddDateRangeAsArrayToReservations < ActiveRecord::Migration
  def change
  	add_column :reservations, :date_range, :string
  end
end
