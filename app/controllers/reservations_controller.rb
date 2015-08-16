class ReservationsController < ApplicationController

  layout 'squeeze_page', only: [:new]

  def index
    @reservations = Reservation.where(params[:status])
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
  	params.require(:reservation).permit(:user_id, :spa_id, :arrival_date, :nights, :first_name, :email, :guests, :status)
  end

  # def count_all_reservations_for_a_given_date
  #   i = 0
  #   total_guest_count = 0
  #   while i < 15 do 
  #     # group reservations by arrival date and sum the guests for date, date-i while i is 1..14
  #     total_guest_count = @reservations.groups(:arrival_date - i).sum(:guests)
  #     i += 1
  #   end
  # end
end
