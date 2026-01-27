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

def insert_at_last(head)
  last_val = 6
  current = head

  last_node = ListNode.new(last_val)

  while current.next
    current = current.next
  end 

  current.next = last_node 
  
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
last_insert = insert_at_last(head)

puts display(last_insert)