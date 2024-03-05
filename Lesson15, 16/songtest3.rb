class Artist
	attr_reader :name, :albums

	def initialize(name)
		@name = name
		@albums = []
	end

	def add_album(album)
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

	def add_song(song)
		@songs << song
	end
end

class Song
	attr_reader :name, :duration

	def initialize(name, duration=0)
		@name = name
		@duration = duration
	end
end

artist1 = Artist.new('Autechre')

album1 = Album.new('Amber', 1994)

artist1.add_album album1

song1 = Song.new('Foil', 5)
song2 = Song.new('Montreal', 7)
song3 = Song.new('Silverside')

album1.add_song song1
album1.add_song song2
album1.add_song song3

#ВЫВОД:
puts "Artist: #{artist1.name}"

artist1.albums.each do |album|
	puts "Album: #{album.name}, year: #{album.year}"
	album1.songs.each do |song|
		puts "#{song.name} -- #{song.duration}"
	end
end
