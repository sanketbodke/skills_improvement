numbers = [1, 2, 3, 4, 5]
def avg_of_elements(arr)
    sum = 0
    arr.each do |num|
        sum += num
    end
    (sum / arr.length.to_f).round(2)
end

puts avg_of_elements(numbers)