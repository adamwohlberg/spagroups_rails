class ChangeTableNameFromGroupTripsToRetreats < ActiveRecord::Migration
  def change
  	rename_table :group_trips, :retreats
  end
end
