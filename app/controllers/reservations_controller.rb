class ReservationsController < ApplicationController

  def index
    @reservations = Reservation.all.includes(:room)
  end

  def new
    @reservation = Reservation.new
  end

  def confirm
    @reservation = Reservation.new(reservation_params)
  end

  def create
    @reservation = Reservation.new(reservation_params)
    
    start_date = @reservation.start_date
    end_date = @reservation.end_date
    days = (end_date - start_date).to_i + 1
    person = @reservation.person
    price = @reservation.price
    @reservation.total = (price * person) * days

    if @reservation.save
      redirect_to room_reservations_path
    else
      redirect_to root_path
    end
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
      params.require(:reservation).permit(:start_date, :end_date, :price, :total, :person, :user_id, :room_id)
    end

end
