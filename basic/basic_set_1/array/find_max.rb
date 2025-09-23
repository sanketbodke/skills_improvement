numbers = [9,12,10, 11, 6, 9, 17]

def find_max(array)
  array.max
end

puts find_max(numbers)

def find_max_logic(array)
  max = array[0]

  array.each do |num|
    if num >= max
      max = num
    end
  end

  max
end

puts find_max_logic(numbers)