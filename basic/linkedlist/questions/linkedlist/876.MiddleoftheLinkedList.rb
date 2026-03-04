# Input: head = [1,2,3,4,5]
# Output: [3,4,5]
# Explanation: The middle node of the list is node 3.
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
  vals = []

  while current
    vals << current.val
    current = current.next
  end

  vals
end

def middle_node(head)
  current = head
  vals = []
  mid_vals = []

  while current
    vals << current.val
    current = current.next
  end

  length_of_list = vals.length / 2

  vals[length_of_list..].each do |val|
    mid_vals << val
  end 
  
  mid_vals
end

head1 = create_a_list([1,2,3])
puts display(head1).length / 2
puts middle_node(head1).inspect