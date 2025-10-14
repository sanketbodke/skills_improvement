numbers = [1, 2, 3, 4, 5]

# puts numbers.max

def max_in_array(array)
    max = array[0]

    array.each do |num|
        if num > max
            max = num
        end
    end

    max
end

puts max_in_array(numbers)