def first_unique_char(str)
  count = Hash.new(0)
  str.each_char { |ch| count[ch] += 1 }

  str.each_char { |ch| return ch if count[ch] == 1 }
end

# Test cases
test_cases = [
  "saasssnket",  # Expected: "n" ✅
  "hello",       # Expected: "h"
  "aabbcc",      # Expected: nil (no unique)
  "abccba",      # Expected: nil (no unique)
  "programming"  # Expected: "p"
]

test_cases.each do |str|
  result = first_unique_char(str)
  puts "String: '#{str}' → First unique: #{result ? "'#{result}'" : 'None'}"
end