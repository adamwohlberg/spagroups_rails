class AddColumnDateToGuestNights < ActiveRecord::Migration
  def change
  	add_column :guest_nights, :date, :date
  end
end
