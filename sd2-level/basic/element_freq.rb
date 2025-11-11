numbers = [2,2,1,1,3,3,4,4,4]
freq = {}

numbers.each do |number|
    if freq[number]
        freq[number] += 1
    else
        freq[number] = 1    
    end   
end

puts freq.inspect