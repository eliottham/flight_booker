class FlightsController < ApplicationController
	def index
		@airport_options = Airport.all.map { |a| [ a.name, a.id ] }
		@dates = Flight.date_format
		@flights = Flight.available_flights(params[:search]) if params[:search]
	end
end
