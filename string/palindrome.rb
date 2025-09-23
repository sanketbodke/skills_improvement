def palindrome_str?(str)
  str == str.reverse
end

puts palindrome_str?("aba")