# Given head, the head of a linked list, determine if the linked list has a cycle in it.

# There is a cycle in a linked list if there is some node in the list that can be reached again by continuously following the next pointer. Internally, pos is used to denote the index of the node that tail's next pointer is connected to. Note that pos is not passed as a parameter.

# Return true if there is a cycle in the linked list. Otherwise, return false.

# Input: head = [3,2,0,-4], pos = 1
# Output: true
# Explanation: There is a cycle in the linked list, where the tail connects to the 1st node (0-indexed).

# Input: head = [1,2], pos = 0
# Output: true
# Explanation: There is a cycle in the linked list, where the tail connects to the 0th node.

# Input: head = [1], pos = -1
# Output: false
# Explanation: There is no cycle in the linked list.

class ListNode
  attr_accessor :val, :next

  def initialize(val=0, next_node=nil)
    @val = val
    @next = next_node
  end  
end  

def create_list(arr)
  return nil if arr.empty?

  head = ListNode.new(arr[0])
  current = head

  arr[1..].each do |val|
    new_node = ListNode.new(val)
    current.next = new_node
    current = current.next
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


def hasCycle(head)
  current = head
  prev = head
  current = head

  while current && current.next
    prev = prev.next
    current = current.next.next

    return true if prev == current
  end

  false  
end

list = [1,9,6,4]
pos = 1
linkedlist = create_list(list)
puts has_cycle = hasCycle(linkedlist)
puts display(linkedlist).inspect