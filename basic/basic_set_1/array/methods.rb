arr = [1, 2, 3, 4]

arr.each { |n| n * 2 }     # returns original array
arr.map  { |n| n * 2 }     # => [2, 4, 6, 8]
arr.select { |n| n.even? } # => [2, 4]