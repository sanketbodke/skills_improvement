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

def display(head)

  result = []
  current = head

  loop do
    result << current.val
    current = current.next
    break if current == head
  end  

  result
end  

arr = [4,1,7,6]
head = create_circular_list(arr)
puts display(head).inspect