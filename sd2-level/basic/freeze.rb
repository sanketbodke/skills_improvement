# freeze in Ruby makes an object immutable - once frozen, you cannot modify it.

# str = "hello"
# str << " word"

# puts str

str = "hello"
str.freeze
str << " world" 

# The << operator in Ruby is the append/shovel operator. 
# It modifies the original object by adding content to it.
