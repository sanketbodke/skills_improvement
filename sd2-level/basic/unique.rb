arr = [1,2,2,3,4,4,5]
# Output => [1,2,3,4,5]

# def unique_elements(array)
#     array.uniq
# end

# puts unique_elements(arr).inspect

def unique_elements(array)
    duplicate = {}
    uniq = []
    
    array.each do |element|
        if duplicate[element]
            duplicate[element] += 1
        else
            uniq << element
            duplicate[element] = 1  
        end    
    end   

    puts uniq.inspect
    uniq 
end 

unique_elements(arr)