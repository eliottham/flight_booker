class BookingsController < ApplicationController
  
  def new
  	@flight = Flight.find(params[:booking][:flight_choice])
    @booking = Booking.new
    params[:booking][:passengers].to_i.times { @booking.passengers.build }
  end

  def create
    flight = Flight.find(booking_params[:flight_id])
    @booking = flight.bookings.create!(booking_params)
    redirect_to @booking
  end

  def show
    @booking = Booking.find(params[:id])
    @flight = @booking.flight
  end
  
  private

    def booking_params
      params.require(:booking).
        permit(:flight_id, passengers_attributes: [:id, :name, :email])
    end
end
