name = "John"

puts name.reverse

def reverse_string(str)
  reversed = ""
  str.each_char do |char|
    reversed = char + reversed
  end
  reversed
end

puts reverse_string(name)