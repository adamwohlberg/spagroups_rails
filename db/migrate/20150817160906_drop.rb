class Drop < ActiveRecord::Migration
  def change
  	drop_table :confirmations
   	drop_table :registrations   
  end
end
