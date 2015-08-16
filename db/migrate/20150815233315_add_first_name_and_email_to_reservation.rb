class AddFirstNameAndEmailToReservation < ActiveRecord::Migration
  def change
  	add_column :reservations, :first_name, :string
  	add_column :reservations, :email, :string  	
  end
end
