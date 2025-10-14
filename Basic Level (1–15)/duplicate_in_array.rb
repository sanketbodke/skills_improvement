numbers = [1,2,2,3,4,4,5]
def find_duplicates(arr)
    duplicates = []
    seen = {}
    arr.each do |num|
        if seen[num]
            duplicates << num unless duplicates.include?(num)
        else
            seen[num] = true
        end
    end
    puts seen
    duplicates
end


puts find_duplicates(numbers)
