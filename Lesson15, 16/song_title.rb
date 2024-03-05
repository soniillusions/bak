class Album
attr_reader :title
attr_reader :songs

	def initialize(title)
		@title = title
		@songs = []
	end

	def add_song song
		@songs << song
	end

end

class Song
attr_reader :name, :duration

	def initialize name, duration
		@name = name
		@duration = duration
	end

end

album1 = Album.new 'Amber'

song1 = Song.new 'Foil', 6.04
song2 = Song.new 'Montreal', 7.15
song3 = Song.new 'Silverside', 5.31
song4 = Song.new 'Slip', 6.21
song5 = Song.new 'Glitch', 6.15
song6 = Song.new 'Piezo', 8.0
song7 = Song.new 'Nine', 3.4
song8 = Song.new 'Further', 10.07
song9 = Song.new 'Yulquen', 6.37
song10 = Song.new 'Nil', 7.48
song11 = Song.new 'Teartear', 6.45

album1.add_song song1
album1.add_song song2
album1.add_song song3
album1.add_song song4
album1.add_song song5
album1.add_song song6
album1.add_song song7
album1.add_song song8
album1.add_song song9
album1.add_song song10
album1.add_song song11

album1.songs.each do |song|
	puts "Name: #{song.name}, Duration: #{song.duration}"
end