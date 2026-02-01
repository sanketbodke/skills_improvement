# Nested array
nested = [1, [2, 3], [4, [5, 6]]]
puts "Original: #{nested.inspect}"
puts "Flattened: #{nested.flatten.inspect}"

# Output:
# Original: [1, [2, 3], [4, [5, 6]]]
# Flattened: [1, 2, 3, 4, 5, 6]