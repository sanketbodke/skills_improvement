class Shape
  def area
    raise "This method should be overridden in a subclass"
  end
end

class Circle < Shape
  def initialize(radius)
    @radius = radius
  end

  def area
    Math::PI * @radius**2
  end
end

c = Circle.new(5)
puts c.area