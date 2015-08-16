class Reservation < ActiveRecord::Base
	belongs_to :spa
	has_many :reservation_dates
	
	scope :pending, -> { where(status: 'pending') }
	scope :confirmed, -> { where(status: 'confirmed') }
	scope :deposit_paid, -> { where(status: 'deposit_paid') }

	# after_save :calculate_date_range

	# private

	# def calculate_date_range
		
	# end
end
