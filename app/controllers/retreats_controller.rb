class RetreatsController < ApplicationController

	layout 'application'

	def index
		# show all retreats where params[:date] is between Retreat.arrival_date and Retreat.departure_date
		@retreats = Retreat.all
	end

	def show
		@retreat = Retreat.find(params[:id])
	end



end
