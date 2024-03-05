class Song
	attr_reader :name
	attr_accessor :duration

	def initialize name, duration
		@name = name
		@duration = duration
	end

end

song1 = Song.new 'rcazt', 5
song1.duration = 10
puts song1.name
puts song1.duration