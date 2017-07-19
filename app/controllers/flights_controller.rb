class FlightsController < ApplicationController
	def index
		@flights = Flight.available_flights(params[:search]) if params[:search]
	end
end
