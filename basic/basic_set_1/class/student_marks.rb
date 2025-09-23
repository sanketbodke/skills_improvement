class StudentMarks
  def initialize(name, marks)
    @name = name
    @marks = marks
  end

  def average
    (@marks.sum.to_f / @marks.size).round(2)
  end
end

s1 = StudentMarks.new("Sanket", [90,80,90])
puts s1.average

s2 = StudentMarks.new("Sandesh", [90,92,93])
puts s2.average