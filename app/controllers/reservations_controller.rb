class ReservationsController < ApplicationController

  def index
  end

  def new
    @reservation = Reservation.new
  end

  def confirm
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
  end

  def create
    @reservation = Reservation.new(reservation_params)
  end

  def edit
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private
    def reservation_params
      params.require(:reservation).permit(:start_date, :end_date, :price, :total, :person)
    end

end
