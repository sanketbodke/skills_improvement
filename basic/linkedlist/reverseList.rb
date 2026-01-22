class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, next_node = nil)
    @val = val
    @next = next_node
  end  
end  

def create_list(arr)
  return ni if arr.empty?

  head = ListNode.new(arr[0])
  current = head

  arr[1..].each do |val|
    current.next = ListNode.new(val)
    current = current.next
  end 
  
  head
end  


def display(head)
  return "Empty" if head.nil?

  result = []
  current = head
  
  while current
    result << current.val
    current = current.next
  end 
  
  result.join(" -> ")
end  

def reverse_list(head)
  return nil if head.nil?
  
  previous = nil
  current = head
  
  while current
    next_node = current.next 
    current.next = previous 
    previous = current  
    current = next_node  
  end
  
  previous
end


original_arr = [1, 2, 3, 4]
head = create_list(original_arr)

puts "Original: #{display(head)}"

reversed_head = reverse_list(head)

puts "Reversed: #{display(reversed_head)}"

# 📝 Step-by-Step Reverse Process:
# Original: 1 -> 2 -> 3 -> 4 -> NULL

# Step 1:
#   Before: previous=nil, current=1, next=2
#   After:  1 -> nil

# Step 2:
#   Before: previous=1, current=2, next=3
#   After:  2 -> 1

# Step 3:
#   Before: previous=2, current=3, next=4
#   After:  3 -> 2

# Step 4:
#   Before: previous=3, current=4, next=nil
#   After:  4 -> 3
