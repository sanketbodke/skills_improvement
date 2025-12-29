# Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

# You must write an algorithm with O(log n) runtime complexity.

 

# Example 1:

# Input: nums = [1,3,5,6], target = 5
# Output: 2
# Example 2:

# Input: nums = [1,3,5,6], target = 2
# Output: 1
# Example 3:

# Input: nums = [1,3,5,6], target = 7
# Output: 4

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}

nums = [1,3,5,6]
target = 6

def search_insert(nums, target)
  if_number_present_return_index_else_insert(nums, target)
end

def if_number_present_return_index_else_insert(nums, target)
  if nums.include?(target)
    nums.index(target)
  else
      
  end  
end

puts search_insert(nums, target)