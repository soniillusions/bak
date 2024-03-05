class Song
	attr_reader :name, :artist
	attr_accessor :duration
	@@plays = 0

	def initialize(name, artist, duration)
		@name = name
		@artist = artist
		@duration = duration
		@plays = 0
	end

	def play
		@plays += 1
		@@plays += 1
		"This song: #{@plays} plays, total #{@@plays}"
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

class SongList
	MaxTime = 5*60 # 5 minutes

	def SongList.isTooLong(aSong)
		return aSong.duration > MaxTime
	end
end


s1 = Song.new("Nine", "Autechre", 260)
puts SongList.isTooLong(s1)
s2 = Song.new("Foil", "Autechre", 324)
puts SongList.isTooLong(s2)

puts s1.play
puts s2.play
puts s1.play
puts s1.play
