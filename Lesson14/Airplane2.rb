class Airplane
	attr_reader :model
	attr_reader :speed
	attr_reader :altitude

	def initialize(model)
		@model = model
		@speed = 0
		@altitude = 0
	end

	def fly
		@speed = rand(0..700)
		@altitude = rand(0..10000)
	end

	def land
		@speed = 0
		@altitude = 0
	end

	def moving?
		@speed > 0
	end

end

models = ['Boeing-777', 'Airbus-320', 'IL-86']
planes = []

100.times do 
	model = models[rand(0..2)]
	plane = Airplane.new(model)

	if rand(0..1) == 1
		plane.fly
	end

	planes << plane
end

planes.each do |plane|
puts "Model: #{plane.model}, Speed: #{plane.speed}, Altitude: #{plane.altitude}"
end