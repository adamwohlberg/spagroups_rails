class RemoveNightsFromGuestNights < ActiveRecord::Migration
  def change
  	remove_column :guest_nights, :nights
  end
end
