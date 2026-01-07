class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, next_node = nil)
    @val = val
    @next = next_node
  end  
end

def create_a_list(arr)
  return nil if arr.empty?

  head = ListNode(arr[0])
  current = head

  arr[1..].each do |val|
    current.next = ListNode(val)
    current = current.next
  end  

  head
end  


def displayList(head)
  current = head
  values = []

  while current
    values << current.val
    current << current.next
  end

  values.join(" -> ")
end  

arr = [1, 1, 2, 3, 3]
head = create_a_list(arr)

puts displayList(head)