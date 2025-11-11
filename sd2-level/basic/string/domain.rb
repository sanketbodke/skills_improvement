email = "sanket@gmail.com"
domain = email.split('@').last 
# get the result before and after meaans ["sanket","gmail.com"]
puts domain
puts email.split('@').inspect 

sentence = "Hello world ruby programming"
puts sentence.split(" ").inspect
puts sentence.split("").inspect

# ["sanket", "gmail.com"]
# ["Hello", "world", "ruby", "programming"]
# ["H", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d", " ", "r", "u", "b", "y", " ", "p", "r", "o", "g", "r", "a", "m", "m", "i", "n", "g"]

name = "Ruby"
letters = name.chars
puts letters.inspect