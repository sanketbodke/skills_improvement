# Given two non-negative integers low and high. Return the count of odd numbers between low and high (inclusive).

# Example 1:

# Input: low = 3, high = 7
# Output: 3
# Explanation: The odd numbers between 3 and 7 are [3,5,7].

def count_odds(low, high)
  ((high + 1) / 2) - (low / 2)
end


count_odds(800445804,979430543)

	# •	Never loop over huge ranges
	# •	Look for math patterns
	# •	This solution is:
	# •	O(1) time
	# •	O(1) space
	# •	Production-safe