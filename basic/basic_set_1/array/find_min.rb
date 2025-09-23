numbers = [9,12,10, 11, 6, 9, 17, -2]

def find_min(array)
  array.min
end

puts find_min(numbers)

def find_min_logic(array)
  min = array[0]

  array.each do |number|
    if number <= min
      min = number
    end
  end

  min
end

puts find_min_logic(numbers)