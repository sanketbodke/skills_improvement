class Person
  attr_accessor :name, :email # getter and setter

  def initialize(name, email)
    @name = name
    @email = email
  end

  def display
    puts "name is #{@name} email is #{@email}"
  end
end

p = Person.new("sanket", "sanket@gmail.com")
p.display
p.email = "sanket@strydden.com" # setter
puts p.email