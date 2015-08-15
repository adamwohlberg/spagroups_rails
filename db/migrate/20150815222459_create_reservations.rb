class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
    	t.integer :user_id
    	t.integer :spa_id
    	t.date :arrival_date
      t.timestamps null: false
    end
  end
end
