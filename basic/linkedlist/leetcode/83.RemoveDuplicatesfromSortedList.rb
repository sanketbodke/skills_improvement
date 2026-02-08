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
    new_node = ListNode.new(val)
    current.next = new_node
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

def delete_duplicates(head)
  current = head

  while current && current.next
    if current.val == current.next.val
      current.next = current.next.next
    else
      current = current.next  
    end  
  end  

  head
end  

list = [2,3,3]
head = create_a_list(list)
new_head = delete_duplicates(head)
puts display(new_head).inspect