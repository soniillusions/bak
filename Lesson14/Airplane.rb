class Airplane
	attr_reader :model
	attr_reader :altitude
	attr_accessor :speed

	def initialize(model)
		@model = model
		@speed = 0
		@altitude = 0
	end

	def fly
		@speed = 700
		@altitude = 10000
	end

	def land
		@speed = 0
		@altitude = 0
	end

def moving?
	return @speed > 0
end

end

models = ['Airbus-320', 'Boeing-777', 'IL-86']
planes = []

1000.times do 
	model = models[rand(0..2)]
	plane = Airplane.new(model)

	if rand(0..1) == 1
		plane.fly
	end

plane.speed = rand(500..800)

	planes << plane

end


planes.each do |plane|
puts "Model: #{plane.model}, Altitude: #{plane.altitude}, Speed: #{plane.speed}"
puts "Is moving: #{plane.moving?}"
end
