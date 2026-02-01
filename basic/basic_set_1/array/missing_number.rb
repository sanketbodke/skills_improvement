def missing_number(arr)
  n = arr.length + 1
  total = n * (n + 1) / 2
  total - arr.sum
end

puts missing_number([1, 2, 4, 5])