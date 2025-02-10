class Car
    MILES_PER_GALLON = 20

    attr_reader :fuel

    def initialize
        @fuel = 0
    end

    def add_fuel amount
        @fuel += amount
    end

    # как далеко мы сможем проехать
    def distance
        @fuel * MILES_PER_GALLON
    end
end

car = Car.new
car.add_fuel 10
puts "Distance is #{car.distance}"
