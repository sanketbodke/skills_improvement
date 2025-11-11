new_hash = Hash.new(0)

new_hash["a"] += 1  # This works! It's equivalent to: new_hash["a"] = 0 + 1 = 1
new_hash["b"] += 1
new_hash["a"] += 1  # Now new_hash["a"] = 1

puts new_hash

hash_with_new_value = Hash.new(1)
hash_with_new_value["x"] += 2  # This works! It's equivalent to: hash_with_new_value["x"] = 1 + 2 = 3
hash_with_new_value["y"] += 3

puts hash_with_new_value.inspect