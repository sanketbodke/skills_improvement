class Car
  attr_accessor :brand, :color

  def initialize(brand, color)
    @brand = brand
    @color = color
  end

  def details
    puts "Brand: #{@brand} color: #{@color}"
  end
end

obj1 = Car.new("BMW", "Black")

puts obj1.details