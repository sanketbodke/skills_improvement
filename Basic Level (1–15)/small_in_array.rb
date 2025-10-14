numbers = [1, 2, 3, 4, 5]

puts numbers.min

def small_in_array(array)
    min = array[0]
    
    array.each do |num|
        if num < min
            min = num
        end
    end

    min
end

puts small_in_array(numbers)