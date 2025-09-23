# in build

name = "ruby on rails"

def reverse_string(string)
  string.reverse
end

puts reverse_string(name)

# logical

def reverse_string_new(string)
  string_name = []
  string.each_char do |char|
    string_name.push(char)
  end

  string_name.reverse.join('')
end

puts reverse_string_new(name)