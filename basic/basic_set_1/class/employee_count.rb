class EmployeeCount
  @@count = 0

  def initialize
    @name = @name
    @@count += 1
  end

  def self.total_employee
    @@count
  end
end

e1 = EmployeeCount.new("John")
e2 = Employee.new("Sara")
puts Employee.total_employees