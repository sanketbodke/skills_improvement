class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, next_node = nil)
    @val = val
    @next = next_node
  end 
end  

def create_a_list(arr)
  return nil if arr.empty?

  head = ListNode.new(arr[0])
  current = head

  arr[1..].each do |val|
    current.next = ListNode.new(val)
    current = current.next
  end
  
  head
end  

def delete_last_node(head)
  current = head

  while current.next.next
    current = current.next
  end

  current.next = nil
  head
end  
 

def display(head)
  current = head
  result = []

  while current
    result << current.val
    current = current.next
  end
  
  result
end  


new_list = [1,2,3,4,5]
head = create_a_list(new_list)
new_head = delete_last_node(head)

puts display(new_head).inspect
