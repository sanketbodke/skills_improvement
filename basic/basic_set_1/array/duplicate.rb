nums = [1,1,2,3,4,4,4,4,5]
result = []
count = Hash.new(0)

nums.each do |n|
  if count[n] == 0 
    result << n
  end
  count[n] += 1
end 

puts "Count: #{count.inspect}"
puts "Result (unique elements in order): #{result.inspect}"