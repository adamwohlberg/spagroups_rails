class CreateGroupTrips < ActiveRecord::Migration
  def change
    create_table :group_trips do |t|
    	t.date :arrival_date
    	t.integer :spa_id
    	t.integer :group_leader_id
    	t.string :name
    	t.integer :registered
    	t.integer :confirmed 
    	t.integer :group_rates_at, :default => 8
    	t.integer :comp_stay_at, :default => 12
    	t.string :facebook_url
    	t.string :image
    	t.string :facebook_image
    	t.text :description
    	t.string :paypal
      t.timestamps null: false
    end
  end
end
