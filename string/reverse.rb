def reverse(string_input)
  reversed = ""
  string_input.each_char { |char| reversed = char + reversed }
  reversed
end

puts reverse("abc")