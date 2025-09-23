num = [1,2,3,4,1]

fre = Hash.new(0)

num.each do |n|
  fre[n] += 1
end

puts fre