class Reservation < ActiveRecord::Base
	belongs_to :spa
	has_many :guest_nights
	accepts_nested_attributes_for :reservation_guest_nights
	validates_presence_of :arrival_date
	
	scope :pending, -> { where(status: 'pending') }
	scope :confirmed, -> { where(status: 'confirmed') }
	scope :deposit_paid, -> { where(status: 'deposit_paid') }

	after_save :create_guest_nights_records_for_each_reservation

	def create_guest_nights_records_for_each_reservation
		GuestNight
	end


end
