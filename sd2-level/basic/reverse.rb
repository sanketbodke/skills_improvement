name = "sanket"

puts name.reverse

elements = name.split('')
reverse = []

len = elements.length
puts len

elements.each_with_index do |char, i|
    puts elements[len - 1 - i]  
    reverse << elements[len - 1 - i] 
end

puts reverse.join