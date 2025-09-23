name = "sankets"

fre = Hash.new(0)

name.each_char do |char|
  fre[char] += 1
end

puts fre