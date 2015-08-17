class RemoveDateRange < ActiveRecord::Migration
  def change
  	remove_column :reservations, :date_range
  end
end
