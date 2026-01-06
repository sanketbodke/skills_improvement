# Arrays provide a variety of methods that allow to add elements to them.

# push allows one to add an element to the end of the list.
#  >x = [1,2]
#  >x.push(3)
#  => [1,2,3]
# insert allows one to add one or more elements starting from a given index (shifting elements after the given index in the process).
#  >x = [1,2]
#  >x.insert(1, 5, 6, 7)
#  => [1, 5, 6, 7, 2]
# unshift allows one or more elements to be added at the beginning of the list.
#  >x = [1,2,3]
#  >x.unshift(10, 20, 30)
#  => [10, 20, 30, 1, 2, 3]
# In this challenge, your task is to complete three functions that take in the array arr and

# Add an element to the end of the list
# Add an element to the beginning of the list
# Add an element after a given index (position)
# Add more than one element after a given index (position)

def end_arr_add(arr, element)
    # Add `element` to the end of the Array variable `arr` and return `arr`
    arr.push(element)
end

def begin_arr_add(arr, element)
    # Add `element` to the beginning of the Array variable `arr` and return `arr`
    arr.unshift(element)
end

def index_arr_add(arr, index, element)
    # Add `element` at position `index` to the Array variable `arr` and return `arr`
    arr.insert(index, element)
end

def index_arr_multiple_add(arr, index)
    # add any two elements to the arr at the index
    arr.insert(index, 40, 50)
    arr  # Make sure to return the array
end

arr = Array.new

arr = end_arr_add(arr, 10)

if arr.nil?
    puts "Element #{10} has to be inserted into the array"
    exit(0)
end

unless 1 == arr.length
    puts "more than 1 element is inserted into the array"
    exit(0)
end

unless not arr.nil? and 10 == arr[0]
    puts "Element 10 is not inserted into the end of the array"
    exit(0)
else
    puts "Element 10 is inserted to the end of the array!"
end

arr = begin_arr_add(arr, 20)

unless not arr.nil? and 2 == arr.length and 20 == arr[0]
    puts "Element 20 is not inserted into the beginning of the array"
    exit(0)
else
    puts "Element 20 is inserted into the beginning of the array!"
end

arr = index_arr_add(arr, 1, 30)

unless not arr.nil? and 3 == arr.length and 30 == arr[1]
    puts "Element 30 is not inserted at the position #{1} of the array"
    exit(0)
else
    puts "Element 30 is inserted at the position #{1} of the array!"
end

index = 1
arr = index_arr_multiple_add(arr, index)

unless not arr.nil? and 5 == arr.length
    puts "Add two more elements to the array"
    exit(0)
else
    puts "Correct! You've added 2 elements to the array!"
end