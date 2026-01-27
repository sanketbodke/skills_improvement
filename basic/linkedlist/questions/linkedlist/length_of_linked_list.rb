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
  current = head
  values = []

  while current
    values << current.val
    current = current.next
  end  

  values
end

def total_elements(head)
  count = 0
  current = head

  while current
    count += 1
    current = current.next
  end 
  
  count
end  


arr = [1,2,3,9]
head = create_a_list(arr)

puts display(head)
puts total_elements(head)