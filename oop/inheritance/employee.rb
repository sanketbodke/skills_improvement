class Employee
  @@count = 0 # class variable

  def initialize(name)
    @name = name  # instance variable
    @@count += 1
  end

  def self.total_employees # class method, not tied to a single object
    @@count
  end
end

e1 = Employee.new("John")
e2 = Employee.new("Sara")
puts Employee.total_employees