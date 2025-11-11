numbers = [1,2,3,4,4]

freq = Hash.new(0)  # default value to 0
numbers.each { |num| freq[num] += 1 }

puts freq