class Song

	def initialize(name, artist, duration)
		@name = name
		@artist = artist
		@duration = duration
	end
end

aSong = Song.new("Foil", "Autechre", 5)
aSong.to_s
#puts aSong.inspect
