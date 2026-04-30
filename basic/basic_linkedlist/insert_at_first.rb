class ListNode
  attr_accessor :val, :next_node

  def initialize(val = 0, next_node = nil)
    @val = val
    @next_node = next_node
  end
end

def create_a_list(arr)
  return nil if arr.empty?

  head = ListNode.new(arr[0])
  current = head

  arr[1..].each do |val|
    current.next_node = ListNode.new(val)
    current = current.next_node
  end

  head
end

def insert_at_beginning(head)
  current = head

  insert_to_first_val = 5
  first_node = ListNode.new(insert_to_first_val)
  first_node.next_node = current

  first_node
end

def print_list(head)
  current = head
  list = []

  while current
    list << current.val
    current = current.next_node
  end

  list
end


array = [4,3,2,1]
head = create_a_list(array)
new_head = insert_at_beginning(head)
puts print_list(new_head)
