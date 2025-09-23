module Flyable
  def fly
    "I can fly!"
  end
end

class Bird
  include Flyable
end

bird = Bird.new
puts bird.fly