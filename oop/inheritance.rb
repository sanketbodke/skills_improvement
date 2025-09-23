class Vehicle
  def initialize(make)
    @make = make
  end

  def info
    puts "Vehicle make: #{@make}"
  end
end

class Bike < Vehicle
  def info
    super
  end
end

bike = Bike.new("Yamaha")
puts bike.info