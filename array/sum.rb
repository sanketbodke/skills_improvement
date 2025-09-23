# def sum_arr(arr)
#   arr.reduce(0, :+)
# end
#
# puts sum_arr([1,2,3,4])

# arr.reduce(0) { |sum, num| sum + num }

num = [1,2,3,4,5]
sum = 0
num.each do |num|
  sum += num
end

puts sum