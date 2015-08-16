class Spa < ActiveRecord::Base
	has_many :group_trips

	has_many :reservations

	has_many :registrations, :dependent => :destroy
	has_many :confirmations, :dependent => :destroy

	def name_with_city
    "#{name}:  #{city} - #{state}"
  end

end
