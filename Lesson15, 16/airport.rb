class Airport
	attr_reader :name
	attr_reader :airplanes 

	def initialize(name)
		@name = name
		@airplanes = []
	end

	def add_plane plane 
		@airplanes << plane
	end
end

class Plane
	attr_reader :model

	def initialize(model)
		@model = model
	end
end

# создание аэропортов
airports = []

a1 = Airport.new 'Paris-Orly'
a2 = Airport.new 'Orlando'

# добавляем аэропорты в массив
airports << a1
airports << a2

# создание самолетов для 1 аэропорта
plane1 = Plane.new 'A-320'
plane2 = Plane.new '77w'
plane3 = Plane.new 'A-380'

# добавляем самолёты в 1 аэропорт

a1.add_plane plane1
a1.add_plane plane2
a1.add_plane plane3

# создание самолетов для 2 аэропорта
plane4 = Plane.new 'A-325'
plane5 = Plane.new '78w'
plane6 = Plane.new 'A-381'

# добавляем самолёты в 2 аэропорт

a2.add_plane plane4
a2.add_plane plane5
a2.add_plane plane6

airports.each do |airport|
	puts "Airport: #{airport.name}" #show airport name
	airport.airplanes.each do |plane|
		puts "Plane: #{plane.model}" 
	end
end


