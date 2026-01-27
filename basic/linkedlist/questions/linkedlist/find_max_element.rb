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

def find_max(head)
  current = head
  max = 0

  while current
    max = current.val if current.val > max
    current = current.next
  end  

  max
end  

arr = [-3,5,0,33,20,50]
head = create_a_list(arr)

puts display(head)
puts find_max(head)