class GroupTripCalendarController < ApplicationController
	def index
		@reservations = Reservation.all
		@reservations_by_date = @reservations.group_by(&:arrival_date)
		@reservations_count_by_date = @reservations.group(:arrival_date).sum(:guests)
		@date = params[:date] ? Date.parse(params[:date]) : Date.today
	end

	def show_multiple_spas
		# show all the spas as links where the date clicked on the calendar in the params hash is included in the dates of the group trip
		@spas = GroupTrip.dates.where.include?(params[:date])
	end

	def show
		@group_trip = GroupTrip.find(params[:date])
	end
end
