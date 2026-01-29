class DoublyListNode
  attr_accessor :val, :next, :prev
  
  def initialize(val = 0, next_node = nil, prev_node = nil)
    @val = val
    @next = next_node
    @prev = prev_node
  end
end

def create_doubly_list(arr)
  return nil if arr.empty?
  
  head = DoublyListNode.new(arr[0])
  current = head
  
  arr[1..].each do |val|
    new_node = DoublyListNode.new(val)
    current.next = new_node  
    new_node.prev = current
    current = new_node
  end
  
  head
end 

def display_forward(head)
  return "Empty" if head.nil?
  
  result = []
  current = head
  
  while current
    result << current.val
    current = current.next
  end
  
  result
end

def display_backward(head)
  return "Empty" if head.nil?
  
  current = head
  while current.next
    current = current.next
  end
  
  result = []
  while current
    result << current.val
    current = current.prev
  end
  
  result
end


arr = [1, 2, 3, 4]
head = create_doubly_list(arr)

puts "Array: #{arr.inspect}"
puts "Forward: #{display_forward(head)}"
puts "Backward: #{display_backward(head)}"