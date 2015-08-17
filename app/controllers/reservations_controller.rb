class ReservationsController < ApplicationController

  layout 'squeeze_page', only: [:new]

  def index
    @reservations = Reservation.all
    @reservations_by_date = @reservations.group_by(&:arrival_date)
    @reservations_count_by_date = all_reservations
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
    # @all_reservations = all_reservations
  end

  def new
    @reservation = Reservation.new
  end 

  def create
  	@reservation = Reservation.new(reservation_params) 
    if @reservation.save
      flash[:notice] = "Congratulations! Your reservation has successfully been added to our group calendar."
      redirect_to reservations_path(:status => 'pending',:spa => 'all')
    else
      render 'index'
    end
  end

  def update
  end
  
  private

  def reservation_params
  	params.require(:reservation).permit(:user_id, :spa_id, :arrival_date, :nights, :first_name, :email, :guests, :status)
  end
end
