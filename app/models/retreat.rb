class GroupTrip < ActiveRecord::Base
	belongs_to :spa
	has_many :users, :through :registrations
	has_many :users, :through :confirmations
end
