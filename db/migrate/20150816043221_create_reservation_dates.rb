class CreateReservationDates < ActiveRecord::Migration
  def change
    create_table :reservation_dates do |t|
    	t.string :reservation_id
    	t.date :date
    end
  end
end
