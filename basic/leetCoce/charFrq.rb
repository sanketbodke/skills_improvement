name = "sanketsa"
char_frq = {}

name.each_char do |n|
  if char_frq[n]
    char_frq[n] += 1
  else
    char_frq[n] = 1
  end  
end

puts char_frq.inspect