class ReservationsController < ApplicationController

  layout 'squeeze_page', only: [:new]

  def index
    @reservations = Reservation.all
    # @reservations_by_date = @reservations.group_by(&:arrival_date)
    # @reservations_count_by_date = @reservations.group(:arrival_date).sum(:guests)
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end

  def new
    @reservation = Reservation.new
  end 

  def create
  	@reservation = Reservation.new(reservation_params) 
    if @reservation.save
      flash[:notice] = "Congratulations! Your reservation has successfully been added to our group calendar."
      redirect_to reservations_path
    else
      flash[:alert] = "Something is wrong - please check all fields."
      render 'new'
    end
  end

  def update
  end
  
  private

  def reservation_params
  	params.require(:reservation).permit(:user_id, :spa_id, :arrival_date,:first_name, :email, :status, reservation_guest_nights_attributes: [ :reservation_id, :nights, :guests ])
  end
end
