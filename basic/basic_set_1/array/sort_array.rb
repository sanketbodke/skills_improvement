input = [1,2,4,5,2]

# puts input.sort

def sorted_array(arr)
  length = arr.length

  (0...length).each do |num|
    (0...(length - num - 1)).each do |inner_num|
      if arr[inner_num] > arr[inner_num + 1]
        arr[inner_num], arr[inner_num + 1] =  arr[inner_num + 1] ,  arr[inner_num]
      end  
    end  
  end
  
  arr
end  

puts sorted_array(input)