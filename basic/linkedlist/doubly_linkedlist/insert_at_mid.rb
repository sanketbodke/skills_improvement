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
  result = []
  current = head

  while current
    result << current.val
    current = current.next
  end 
  
  result
end  

def insert_at_mid(head)
  mid_val = 6

  current = head
end  

list = [1,5,4,8]
head = create_doubly_list(list)

puts display_forward(head).inspect