def most_frequent_char(str)
  freq = Hash.new(0) # default value to 0 
  str.each_char do |char|
    freq[char] += 1
  end
  puts freq
end

puts most_frequent_char("mississippi")

# Without default value
# freq = {}
# freq["a"] += 1  # This would cause an error! (undefined method `+' for nil)

# With default value of 0
# freq = Hash.new(0)
# freq["a"] += 1  # This works! It's equivalent to: freq["a"] = 0 + 1 = 1