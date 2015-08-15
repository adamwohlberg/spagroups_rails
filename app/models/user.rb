class User < ActiveRecord::Base
	has_many :reservations
	has_many :confirmations
	has_many :group_trips, :through :reservations
	has_many :group_trips, :through :confirmations
end
