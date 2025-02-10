require './car'

describe Car do
    it "must return distance" do
        car = Car.new

        car.add_fuel 10

        expect(car.distance).to eq 200
    end
end