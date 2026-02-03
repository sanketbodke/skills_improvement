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

def display_forward(head)
  current = head
  result = []

  while current
    result << current.val
    current = current.next
  end  

  result
end  

def delete_first_node(head)
  current = head
  new_first_node = current.next
  new_first_node.prev = nil

  new_first_node
end  

list = [4,1,9,3]
head = create_doubly_list(list)
new_head = delete_first_node(head)
puts display_forward(new_head).inspect