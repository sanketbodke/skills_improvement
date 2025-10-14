number = 5

def factorial(num)
  return 1 if num == 1
  num * factorial(num - 1)
end

puts factorial(number)

def factorial_iterative(num)
  result = 1
  (1..num).each do |i|
    result *= i
  end
  result
end

puts factorial_iterative(number)