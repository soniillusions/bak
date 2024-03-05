class Country
	attr_reader :name
	attr_reader :airports

	def initialize(name)
		@name = name
		@airports = []
	end

	def add_airport airport
		@airports << airport
	end
end

class Airport
	attr_reader :name
	attr_reader :planes

	def initialize(name)
		@name = name
		@planes = []
	end

	def add_plane plane
		@planes << plane
	end
end

class Plane
	attr_reader :model

	def initialize(model)
		@model = model
	end
end

countries = []
airports = []
planes = []

country1 = Country.new 'Paris'
countries << country1

airport1 = Airport.new 'Paris-Orly'
airport2 = Airport.new 'Lyon'
airports << airport1
airports << airport2

country1.add_airport airport1
country1.add_airport airport2

plane1 = Plane.new 'A-320'
plane2 = Plane.new 'A-380'
plane3 = Plane.new '777'

plane4 = Plane.new 'A-320'
plane5 = Plane.new 'A-380'
plane6 = Plane.new '777'

planes << plane1
planes << plane2
planes << plane3
planes << plane4
planes << plane5
planes << plane6

airport1.add_plane plane1
airport1.add_plane plane2
airport1.add_plane plane3

airport2.add_plane plane4
airport2.add_plane plane5
airport2.add_plane plane6

countries.each do |country|
	puts "Country: #{country.name}"
	airports.each do |airport|
		puts "Airport: #{airport.name}"
		planes.each do |plane|
			puts "Plane: #{plane.model}"
		end
	end
end
