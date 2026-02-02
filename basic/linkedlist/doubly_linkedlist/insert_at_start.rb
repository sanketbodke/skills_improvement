class DoublyListNode
  attr_accessor :val, :next, :prev

  def initialize(val = 0, next_node = nil, prev_node = nil)
    @val = val
    @next = next_node
    @prev = prev_node
  end
end  

def create_doubly_list(arr)
  new_node = DoublyListNode.new(arr[0])

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

def display(head)
  result = []
  current = head

  while current
    result << current.val
    current = current.next
  end 
  
  result
end  

def insert_at_start(head)
  current = head
  start_val = 4
  node_at_start = DoublyListNode.new(start_val)
  node_at_start.next = current
  current.prev = node_at_start

  node_at_start
end  

arr = [1,6,4,3]
head = create_doubly_list(arr)
new_head = insert_at_start(head)
puts display(new_head).inspect