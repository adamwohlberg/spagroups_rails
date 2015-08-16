class ReservationsController < ApplicationController

  layout 'squeeze_page', only: [:new]

  def index
    @reservation = Reservation.new
  end

  def new
    @reservation = Reservation.new
  end 

  def create
  	@reservation = Reservation.new(reservation_params) 
    if @reservation.save
      redirect_to :controller => 'group_trip_calendar', :action => 'index'
    else
      render 'index'
    end
  end

  def update
  end
  
  private

  def reservation_params
  	params.require(:reservation).permit(:user_id, :spa_id, :arrival_date, :nights, :first_name, :email, :guests)
  end

end
