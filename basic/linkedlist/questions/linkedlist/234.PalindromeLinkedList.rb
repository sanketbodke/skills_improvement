# Input: head = [1,2,2,1]
# Output: true

# Input: head = [1,2]
# Output: false

class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, next_node = nil)
    @val = val
    @next = next_node
  end
end

def create_list(arr)
  return nil if arr.empty?
  head = ListNode.new(arr[0])
  current = head
  arr[1..].each do |val|
    current.next = ListNode.new(val)
    current = current.next
  end
  head
end

def is_palindrome(head)
  vals = []
  current = head
  while current
    vals << current.val
    current = current.next
  end
  vals == vals.reverse
end

head1 = create_list([1,2,2,1])
puts is_palindrome(head1) 

head2 = create_list([1,2])
puts is_palindrome(head2)  