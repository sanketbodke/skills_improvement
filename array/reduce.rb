numbers = [1, 2, 3, 4, 5]

sum = numbers.reduce(0) { |accumulator, number| accumulator + number }
puts sum

numbers.reduce(0) { |accumulator, number| 
    puts accumulator
    accumulator + number
}