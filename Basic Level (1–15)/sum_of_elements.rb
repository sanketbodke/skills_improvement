numbers = [1, 2, 3, 4, 5]

def sum_of_elements(arr)
    sum = 0
    arr.each do |num|
        sum += num
    end
    sum
end

puts sum_of_elements(numbers)