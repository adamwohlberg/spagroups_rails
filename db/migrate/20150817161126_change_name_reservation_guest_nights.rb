class ChangeNameReservationGuestNights < ActiveRecord::Migration
  def change
  	rename_table :reservation_guest_nights, :guest_nights
  end
end
