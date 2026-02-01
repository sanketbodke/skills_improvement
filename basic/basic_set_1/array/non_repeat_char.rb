def first_unique_char(str)
  count = Hash.new(0)
  str.each_char { |ch| count[ch] += 1 }

  str.each_char { |ch| return ch if count[ch] == 1 }
end

puts first_unique_char("saasssnket")
