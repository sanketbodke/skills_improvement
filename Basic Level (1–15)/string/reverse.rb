name = "sanket"

def inbuild_method(name)
  name.reverse
end

def custom_method(name)
  char_in_arr = name.split("")
  length = char_in_arr.length
  rev = []

  char_in_arr.each do |char|
    rev << char_in_arr[length - 1]
    length -= 1                 
  end 
  rev.join("").inspect
end 

puts inbuild_method(name)

puts custom_method(name)