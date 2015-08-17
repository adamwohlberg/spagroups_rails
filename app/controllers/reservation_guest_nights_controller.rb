class ReservationGuestNightsController < ApplicationController

  def create
  	@reservation_guest_nights = ReservationGuestNight.new(reservation_guest_night_params)
  	@reservation_guest_nights.save
  end
  
  private

  def reservation_guest_night_params
  	params.require(:reservation_guest_night).permit(:reservation_id, :nights, :guests )
  end
end
