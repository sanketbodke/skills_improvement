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

def insert_at_beginning(head)
  beginning_val = 5

  current = head

  first_node = ListNode.new(beginning_val)
  first_node.next = current

  head = first_node

  head
end  

def display(head)
  current = head
  val = []

  while current
    val << current.val
    current = current.next
  end  

  val
end

arr = [1, 1, 2, 3, 5]
head = create_a_list(arr)
new_head = insert_at_beginning(head)

puts display(new_head)