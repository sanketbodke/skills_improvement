# Count Partitions with Even Sum Difference

# You are given an integer array nums of length n.

# A partition is defined as an index i where 0 <= i < n - 1, splitting the array into two non-empty subarrays such that:

# Left subarray contains indices [0, i].
# Right subarray contains indices [i + 1, n - 1].
# Return the number of partitions where the difference between the sum of the left and right subarrays is even.

# Input: nums = [10,10,3,7,6]

# Output: 4

# Explanation:

# The 4 partitions are:

# [10], [10, 3, 7, 6] with a sum difference of 10 - 26 = -16, which is even.
# [10, 10], [3, 7, 6] with a sum difference of 20 - 16 = 4, which is even.
# [10, 10, 3], [7, 6] with a sum difference of 23 - 13 = 10, which is even.
# [10, 10, 3, 7], [6] with a sum difference of 30 - 6 = 24, which is even.

nums = [10,10,3,7,6]

def main(nums)
  count = 0

  left_side_sum = []
  right_side_sum = []
  left_side_sum = left_count_partitions(nums)
  right_side_sum = right_count_partitions(nums)

  (0...left_side_sum.length).each do |index|
    number = left_side_sum[index] - right_side_sum[index]
    if is_even?(number)
      count += 1
    end  
  end 

  count
end  

def left_count_partitions(nums)
  left_sum = []
  (0...(nums.length - 1)).each do |num|
    if left_sum.length == 0
      left_sum << nums[num]
    else
      sum_left = left_quick_sum_of_nums(nums, num)
      left_sum << sum_left
    end  
  end
  
  left_sum
end

def left_quick_sum_of_nums(nums, index)
  sum = 0
  (0..index).each do |num|
    sum += nums[num]
  end
  
  sum
end

def right_count_partitions(nums)
  right_sum = []
  (1...(nums.length)).each do |num|
    sum = right_quick_sum_of_nums(nums, num)

    right_sum << sum
  end
  
  right_sum
end

def right_quick_sum_of_nums(nums, index)
  right_sum = []
  (index...nums.length).each do |num|
    right_sum << nums[num]
  end  
  
  right_sum.sum
end

def is_even?(value)
  value.even?
end  

main(nums)
# def right_count(nums, right_count_index)
# end