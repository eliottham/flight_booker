class Airport < ApplicationRecord
	has_many :departing_flights, foreign_key: "from_airport_id", class_name: "Flight"
	has_many :arriving_flights, foreign_key: "to_airport_id", class_name: "Flight"

	def self.options
		Airport.all.map { |a| [ a.name, a.id ] }
	end
end
