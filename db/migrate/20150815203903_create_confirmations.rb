class CreateConfirmations < ActiveRecord::Migration
  def change
    create_table :confirmations, :id => false do |t|
  		t.integer :user_id
  		t.integer :group_trip_id
  	end
  end
end
