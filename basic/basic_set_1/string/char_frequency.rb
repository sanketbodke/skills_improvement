name = "Ruby on Rails"

def char_frequency(str)
  frequency = Hash.new(0)

  str.each_char do |char|
    frequency[char] += 1
  end

  frequency
end

puts char_frequency(name)