class CreateReservationGuestNights < ActiveRecord::Migration
  def change
    create_table :reservation_guest_nights do |t|
    	t.integer :reservation_id
    	t.integer :nights
    	t.integer :guests
      t.timestamps null: false
    end
  end
end