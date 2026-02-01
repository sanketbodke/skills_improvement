name = "sanketsts"

char_count = Hash.new(0)

name.each_char do |n|
  if char_count[n]
    char_count[n] += 1
  else
    char_count[n] = 1
  end  
end  

puts char_count.inspect