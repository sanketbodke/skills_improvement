# There is a singly-linked list head and we want to delete a node node in it.

# You are given the node to be deleted node. You will not be given access to the first node of head.

# All the values of the linked list are unique, and it is guaranteed that the given node node is not the last node in the linked list.

# Delete the given node. Note that by deleting the node, we do not mean removing it from memory. We mean:

# The value of the given node should not exist in the linked list.
# The number of nodes in the linked list should decrease by one.
# All the values before node should be in the same order.
# All the values after node should be in the same order.
# Custom testing:

# For the input, you should provide the entire linked list head and the node to be given node. node should not be the last node of the list and should be an actual node in the list.
# We will build the linked list and pass the node to your function.
# The output will be the entire list after calling your function.

# Input: head = [4,5,1,9], node = 5
# Output: [4,1,9]
# Explanation: You are given the second node with value 5, the linked list should become 4 -> 1 -> 9 after calling your function.

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
  current = head
  result = []

  while current
    result << current.val
    current = current.next
  end  

  result
end  

def delete_node(head, delete_val)
  if head.val == delete_val
    return head.next
  end

  current = head

  while current && current.next
    if current.next.val == delete_val
      current.next = current.next.next
      break
    end  
    current = current.next 
  end  

  head
end  

original_arr = [1, 2, 3, 4]
head = create_a_list(original_arr)
new_head = delete_node(head, 2)

puts display(new_head).inspect

