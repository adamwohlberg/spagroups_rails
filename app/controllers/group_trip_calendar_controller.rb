class GroupTripCalendarController < ApplicationController
	def index
		@reservations = Reservation.all
		@reservations_by_date = @reservations.group_by(&:arrival_date)
		@date = Date.today
	end

	def show
	end
end
