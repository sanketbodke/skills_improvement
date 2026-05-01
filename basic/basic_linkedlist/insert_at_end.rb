class ListNode
  attr_accessor :val, :next_node

  def initialize(val = 0, next_node = nil)
    @val = val
    @next_node = next_node
  end
end

def create_a_list(arr)
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
  list = []

  while current
    list << current.val
    current = current.next_node
  end

  list
end

list = [3,1,2]
head = create_a_list(list)
puts print_list(head)
