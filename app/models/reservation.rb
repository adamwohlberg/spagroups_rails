class Reservation < ActiveRecord::Base
	belongs_to :spa
	has_many :reservation_guest_nights
	accepts_nested_attributes_for :reservation_guest_nights
	validates_presence_of :arrival_date
	
	scope :pending, -> { where(status: 'pending') }
	scope :confirmed, -> { where(status: 'confirmed') }
	scope :deposit_paid, -> { where(status: 'deposit_paid') }

	before_save :calculate_departure_date


	private

	def calculate_departure_date
		self.departure_date = self.arrival_date + nights
	end

end
