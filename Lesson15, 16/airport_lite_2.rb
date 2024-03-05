class Country
    attr_reader :name
    attr_reader :countries

    def initialize(name)
        @name = name
        @airports = []
    end

    def add_airport airport
        @airports << airport
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

country1 = Country.new 'France'

airport1 = Airport.new 'Paris-Orly'

country1.add_airport airport1

plane1 = Plane.new 'Boeing-777'
plane2 = Plane.new 'A-320'

airport1.add_plane plane1
airport1.add_plane plane2