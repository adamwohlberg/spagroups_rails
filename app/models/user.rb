class User < ActiveRecord::Base
	has_many :registrations
	has_many :group_trips, through: :confirmations
	
	has_many :confirmations
	has_many :group_trips, through: :registrations

end
