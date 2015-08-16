class ReservationsController < ApplicationController

  layout 'squeeze_page', only: [:new]

  def index
    @reservations = Reservation.all
    @reservations_by_date = @reservations.group_by(&:arrival_date)
    @reservations_count_by_date = @reservations.group(:arrival_date).sum(:guests)
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end

  def new
    @reservation = Reservation.new
  end 

  def create
  	@reservation = Reservation.new(reservation_params) 
    if @reservation.save
      redirect_to :controller => 'reservations', :action => 'index'
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
