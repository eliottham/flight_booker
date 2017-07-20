class Flight < ApplicationRecord
	belongs_to :from_airport, class_name: "Airport"
	belongs_to :to_airport, class_name: "Airport"
	has_many :bookings

	scope :available_flights, -> (search) { Flight.where(from_airport_id: search[:from_airport_id],
																									     to_airport_id:   search[:to_airport_id],
																									     date:            search[:date].to_datetime) }

	def self.date_options
		Flight.distinct.pluck(:date).map { |f| [ f.strftime("%m/%d/%Y"), f ] }
	end

	def number
		id + 2147
	end
end
