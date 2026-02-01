arr = [1,2,3,6,8,9,28,-2]

max = arr[0]
min = arr[0]

arr.each do |n|
  max = n if n > max
  min = n if n < min
end  

puts min
puts max