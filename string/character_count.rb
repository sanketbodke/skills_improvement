name = "sankets"

def char_count(str)
  frequency = Hash.new(0)
  str.each_char do |ch|
    frequency[ch] += 1
  end

  puts frequency
end

char_count(name)
