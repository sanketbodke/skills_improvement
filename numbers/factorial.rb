# def factorial(n)
#   return 1 if n == 1
#   n * factorial(n - 1)
# end
#
# puts factorial(5)

def factorial(n)
  return 1 if n <= 1
  result = 1
  (2..n).each do |i|
    result *= i
  end
  result
end

puts factorial(5)
