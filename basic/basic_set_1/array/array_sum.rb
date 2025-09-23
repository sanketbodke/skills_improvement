numbers = [9,12,10, 11, 6, 9, 17]

def sum(array)
  array.sum
end

puts sum(numbers)

def sum_logic(array)
  sum = 0

  array.each do |num|
    sum += num
  end

  sum
end

puts sum_logic(numbers)