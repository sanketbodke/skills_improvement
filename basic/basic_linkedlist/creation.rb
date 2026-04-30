class ListNode
  attr_accessor :val, :next_node

  def initialize(val)
    @val = val
    @next_node = nil
  end
end

def create_list(arr)
  return nil if arr.empty?

  head = ListNode.new(arr[0])
  current = head
  arr[1..].each do |val|
    current.next_node = ListNode.new(val)
    current = current.next_node
  end

  head
end

def print_list(head)
  current = head
  while current
    print "#{current.val} -> "
    current = current.next_node
  end
  puts "nil"
end

# Example usage:
arr = [1, 2, 3, 4, 5]
linked_list = create_list(arr)
print_list(linked_list)
