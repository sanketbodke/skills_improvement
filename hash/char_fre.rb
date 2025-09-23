def most_frequent_char(str)
  freq = Hash.new(0)
  str.each_char do |char|
    freq[char] += 1
  end
  puts freq
end

puts most_frequent_char("mississippi")