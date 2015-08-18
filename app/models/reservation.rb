class Reservation < ActiveRecord::Base
	belongs_to :spa
	has_many :guest_nights
	validates_presence_of :arrival_date
	validates_presence_of :first_name
	validates_presence_of :email
	
	scope :pending, -> { where(status: 'pending') }
	scope :confirmed, -> { where(status: 'confirmed') }
	scope :deposit_paid, -> { where(status: 'deposit_paid') }

	after_save :create_guest_nights_records_for_each_reservation
	after_save :create_retreat_template_for_each_reservation

	def create_guest_nights_records_for_each_reservation
		# for each night in reservation date range, create a record in the guest nights table
		i = 0
		while i < self.nights do
			GuestNight.create!(
				:reservation_id => self.id,
				:guests => self.guests,
				:date => self.arrival_date + i
				)
			i += 1
		end
	end

	def create_retreat_template_for_each_reservation
		Retreat.create!(
				:arrival_date => self.arrival_date,
				:spa_id => self.spa_id,
				:name => Faker::Lorem.sentence,
				:registered => GuestNight.where(:date => self.arrival_date).sum(:guests),
				:group_rates_at => 12,
				:confirmed => rand(1..7),
				:description => Faker::Lorem.paragraph
			)
	end
end
