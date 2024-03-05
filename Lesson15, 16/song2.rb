class Artist
	attr_reader :name, :albums

	def initialize(name)
		@name = name
		@albums = []
	end

	def add_album album
		@albums << album
	end
end


class Album
	attr_reader :name, :year, :songs

	def initialize(name, year)
		@name = name
		@year = year
		@songs = []
	end

	def add_song song
		@songs << song
	end
end

class Song
	attr_reader :name
	attr_reader :duration

	def initialize name, duration
		@name = name
		@duration = duration
	end
end

artist1 = Artist.new 'Peter Green'

album1 = Album.new 'In the Skies', 1979

song1 = Song.new 'In the Skies', 4
song2 = Song.new 'Slabo Day', 5
song3 = Song.new 'A Foll No More', 8

album1.add_song song1
album1.add_song song2
album1.add_song song3

artist1.add_album album1

artist1.albums.each do |album|
	puts "Album: #{album.name}, Year: #{album.year}"
	album1.songs.each do |song|
		puts "Song: #{song.name}, Duration: #{song.duration}"
	end
end




