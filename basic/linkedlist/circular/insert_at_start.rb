class CircularListNode
  attr_accessor :val, :next

  def initialize(val = 0, next_node = nil)
    @val = val
    @next = next_node
  end  
end  

def create_circular_list(arr)
  head = CircularListNode.new(arr[0])
  current = head

  arr[1..].each do |val|
    new_node = CircularListNode.new(val)
    current.next = new_node
    current = new_node
  end  

  current.next = head

  head
end  

def insert_at_start(head)
  current = head
  first_node_val = 6

  new_node = CircularListNode.new(first_node_val)
  new_node.next = current
  current = new_node

  while current
    current = current.next
  end  

  current.next = head
  
  head
end  

def display_circular(head)
  current = head
  result = []

  loop do 
    result << current.val
    current = current.next
    break if current == head
  end  

  result
end  

new_list = [1,9,4,3]
head = create_circular_list(new_list)
new_node = insert_at_start(head)
puts display_circular(new_node).inspect