class BookingsController < ApplicationController
  
  def new
  	@flight = Flight.find(params[:booking][:flight_choice])
  	@booking = @flight.bookings.build
  	@passengers = Array.new(params[:booking][:passengers].to_i) { Passenger.new }
  end

  def create
  end
end
