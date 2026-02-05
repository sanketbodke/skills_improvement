# 203. Remove Linked List Elements

# Given the head of a linked list and an integer val, remove all the nodes of the linked list that has Node.val == val, and return the new head.

# Input: head = [1,2,6,3,4,5,6], val = 6
# Output: [1,2,3,4,5]
# Example 2:

# Input: head = [], val = 1
# Output: []
# Example 3:

# Input: head = [7,7,7,7], val = 7
# Output: []

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

def remove_all(head, val)
  while head && head.val == val
    head = head.next
  end

  current = head

  while current && current.next
    if current.next.val == val
      current.next = current.next.next
    else
      current = current.next
    end
  end

  head
end

list = [1,8,4,3,8]
head = create_a_list(list)
new_head = remove_all(head, 8)
puts display(new_head).inspect