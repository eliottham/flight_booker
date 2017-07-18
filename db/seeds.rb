Airport.delete_all
Flight.delete_all

# Create airports
codes = [ "SFO", "JFK", "MEM", "MIA" ]
names = [ "(SFO) - San Francisco Intl., San Francisco, CA",
					"(JFK) - John F. Kennedy Intl., New York, NY",
					"(MEM) - Memphis Intl., Memphis, TN",
					"(MIA) - Miami Intl., Miami, FL" ]
for i in 0..3
	Airport.create(code: codes[i], name: names[i])
end

# Create flights
pairs = Airport.all.to_a.permutation(2).to_a 

pairs.each do |pair|
	for i in 0..10
	  rand(1..3).times do
	  	Flight.create(date: Time.new.to_date + i.day,
								    time: Time.new + rand(24).hour,
								    duration: rand(3..6),
								    from_airport: pair[0],
								 	  to_airport: pair[1])
	  end
	end
end