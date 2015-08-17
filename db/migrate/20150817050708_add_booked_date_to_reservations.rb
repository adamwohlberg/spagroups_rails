class AddBookedDateToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :booked_date, :date
  end
end
