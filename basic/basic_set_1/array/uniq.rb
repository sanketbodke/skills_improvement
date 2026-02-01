num = [1, 2, 2, 3, 4, 5, 2, 3, 3, 1]

duplicates = num.select do |n|
  num.count(n) > 1
end.uniq

puts "Original array: #{num.inspect}"
puts "Duplicates: #{duplicates.inspect}"

def find_duplicates(arr)
  hash = Hash.new(0)
  arr.each { |e| hash[e] += 1 }
  hash.select { |_, v| v > 1 }.keys
end