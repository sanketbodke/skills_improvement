numbers = [9,4,1,1,1,2,3,4,4,4,5,5,6,7,8]
unique_numbers = []

numbers.each do |number|
  unless unique_numbers.include?(number)
    unique_numbers << number
  end
end

puts unique_numbers.sort.inspect