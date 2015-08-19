class RetreatsController < ApplicationController

	layout 'application'

	def index
		# show all retreats where params[:date] is between Retreat.arrival_date and Retreat.departure_date
		# @retreats = Retreat.all
		# hack since we are not manually negotiating reservations with the resorts
		# group by spa for hack to show only one retreat per spa with this arrival date 
		@retreats = Reservation.where(:arrival_date => params[:date]).group(:spa_id)
	end

	def show
		@retreat = Retreat.find(1)
		# @retreat = Retreat.find(params[:id])
	end



end
