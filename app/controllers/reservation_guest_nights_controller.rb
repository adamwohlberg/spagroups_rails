class ReservationGuestNightsController < ApplicationController

  def create
  	@reservation_guest_night = ReservationGuestNight.new(reservation_guest_night_params)
  end
  
  private

  def reservation_guest_night_params
  	params.require(:reservation_guest_night).permit(:reservation_id, :nights, :guests )
  end
end
