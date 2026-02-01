def reverse_str(str)
  rev = []

  len = str.length

  len.times do |i|
    rev << str[len - (i + 1)]
  end 
  
  rev.join()
end  

puts reverse_str("sanket").inspect
