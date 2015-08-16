class RetreatsController < ApplicationController

	def index
		# show all retreats where params[:date] is between Retreat.arrival_date and Retreat.departure_date
		@retreats = Retreat.all
		# @retreats = Retreat.where((Retreat.arrival_date..(Retreat.arrival_date+4)).include?params[:date])
	end

	def show
		@retreat = Retreat.find(params[:id])
	end

end
