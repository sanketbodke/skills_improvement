# def largest_element(array)
#   array.max
# end

# puts largest_element([1, 2, 3, 4])

# def second_largest_element(array)
#   max = array.max
# end
#
# second_largest_element([1,2,3,4])

def second_largest(arr)
  unique_sorted = arr.uniq.sort
  unique_sorted[-2]
end

puts second_largest([10, 20, 4, 45, 99])