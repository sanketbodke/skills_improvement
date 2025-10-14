name = "John Doe"
def count_vowels_and_consonants(name)
    vowels = 0
    consonants = 0
    name.each_char do |char|
        if char.match?(/[aeiouAEIOU]/)
            vowels += 1
        elsif char.match?(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/)
            consonants += 1
        end
    end
    { vowels:, consonants: }
end

result = count_vowels_and_consonants(name)
puts "Vowels: #{result[:vowels]}, Consonants: #{result[:consonants]}"