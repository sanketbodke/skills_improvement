name = "sas"

puts name == name.reverse

def palindrome_str?(str)
  str == str.reverse
end

puts palindrome_str?(name)