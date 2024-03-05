class Country
    attr_reader :title
    attr_reader :countries

    def initialize(title)
    @title = title
    @countries = []
    end

    def add_airport airport
    @countries << airport
    end

end

class Airport
 attr_reader :name
 attr_reader :planes

 def initialize(name)
 @name = name
 @planes = []
 end

 def add_plane plane  
 @planes << plane
 end
end

class Plane
 attr_reader :model

 def initialize(model)
 @model = model
 end
end

countries = []

country1 = Country.new 'France'

countries << country1

airports = []

airport1 = Airport.new 'Paris-Orly'
airport2 = Airport.new 'Lyon-Saint Exupéry'

airports << airport1
airports << airport2

plane1 = Plane.new 'Boeing-777'
plane2 = Plane.new 'A-320'

airport1.add_plane plane1
airport1.add_plane plane2

plane3 = Plane.new 'Boeing-777'
plane4 = Plane.new 'A-320'

airport2.add_plane plane3
airport2.add_plane plane4

country1.add_airport airport1
country1.add_airport airport2

countries.each do |country|
    puts "Country: #{country.title}"
    countries.airports.each do |airport|
        puts "Airport: #{airport.name}"
        countries.airports.planes.each do |plane|
            puts "Plane: #{plane.model}"
        end
    end
end
