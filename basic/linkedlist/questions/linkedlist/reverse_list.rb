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

def display(head)
  result = []
  current = head

  while current
    result << current.val
    current = current.next
  end
  
  result
end 

def reverse_list(head)
  prev = nil
  current = head

  while current
    next_node = current.next
    current.next = prev
    prev = current
    current = next_node
  end

  prev
end 

new_list = [1,2,3,4]

head = create_a_list(new_list)
puts display(head).inspect