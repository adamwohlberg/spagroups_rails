class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations, :id => false do |t|
  		t.integer :user_id
  		t.integer :group_trip_id
    end
  end
end
