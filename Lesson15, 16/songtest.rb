class Song
	def initialize(name, artist, duration)
		@name = name
		@artist = artist
		@duration = duration
	end

	def to_s
		"Song: #{@name} -- #{@artist} #{@duration}"
	end
end

class KaraokeSong < Song
	def initialize(name, artist, duration, lyrics)
		super(name, artist, duration)
		@lyrics = lyrics
	end
	
	def to_s
		super + " [#{@lyrics}]"
	end
end


aSong = KaraokeSong.new("Foil", "Autechre", 364, "Bla Na Na...")
puts aSong.to_s
