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

def delete_last_node(head)
  current = head

  while current.next.next
    current = current.next
  end

  current.next = nil
  head
end  
 

def display(head)
  current = head
  result = []

  while current
    result << current.val
    current = current.next
  end
  
  result
end  

def merge_two_list(head_one, head_two)
  current_one = head_one
  current_two = head_two

  while current_one.next
    current_one = current_one.next
  end  

  current_one.next = current_two

  head_one
end


list_one = [1,2,3,4,5]
head_one = create_a_list(list_one)

puts display(head_one).inspect

list_two = [5,6,7]
head_two = create_a_list(list_two)

puts display(head_two).inspect

new_list = merge_two_list(head_one, head_two)

puts display(new_list).inspect