# Example 1:

# Input: s = "Hello World"
# Output: 5
# Explanation: The last word is "World" with length 5.


input = "hello world"

def length_of_last_word(s)
    convert_into_array = s.split(" ")
    convert_into_array.last.length
end

puts length_of_last_word(input.strip)