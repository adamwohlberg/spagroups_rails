class ReservationFactory 

	def self.create!(params)
		new(params).create_guest_nights_records_for_each_reservation
	end

	def initialize(params)
		# provides the new functionality
		@reservation = Reservation.create!(params)
	end

	def create_guest_nights_records_for_each_reservation
		# for each night in reservation date range, create a record in the guest nights table
		i = 0
		while i < @reservation.nights do
			GuestNight.create!(
				:reservation_id => @reservation.id,
				:guests => @reservation.guests,
				:date => @reservation.arrival_date + i
				)
			i += 1
		end
	end

end