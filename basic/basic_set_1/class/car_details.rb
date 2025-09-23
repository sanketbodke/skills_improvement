class CarDetails
    @@total_cars = 0
    def initialize(name, price)
        @name = name
        @price = price
        @@total_cars += 1
    end
    
    def car_name
        @name
    end
    
    def self.total_cars
        @@total_cars
    end
end

c1 = CarDetails.new("BMW", 50000)
c2 = CarDetails.new("Audi", 60000)
puts c2.car_name
total = CarDetails.total_cars
puts total