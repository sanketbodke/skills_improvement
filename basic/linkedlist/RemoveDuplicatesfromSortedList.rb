class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, next_node = nil)
    @val = val
    @next = next_node
  end
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

def build_list(arr)
  puts "Building list from array: #{arr}"
  return nil if arr.empty?

  puts "Creating head node with value: #{arr[0]}"
  head = ListNode.new(arr[0])
  current = head
  puts "Head created: #{head.val}"
  
  arr[1..].each_with_index do |val, index|
    puts "Adding node #{index + 2} with value: #{val}"
    current.next = ListNode.new(val)
    current = current.next
    puts "Current node now points to: #{current.val}"
  end

  puts "List building complete"
  head
end

def print_list(head)
  puts "Starting to print list..."
  current = head
  values = []
  position = 0

  puts "Head pointer: #{head ? head.val : 'nil'}"

  while current
    puts "Position #{position}: current node value = #{current.val}"
    values << current.val
    current = current.next
    puts "Moving to next node: #{current ? current.val : 'nil'}"
    position += 1
  end

  puts "Collected values: #{values.inspect}"
  puts "Final output:"
  puts values.join(" -> ")
  puts "List printing complete (#{values.length} nodes)"
end

arr = [1, 1, 2, 3, 3]
head = build_list(arr)

puts "Before:"
print_list(head)

# head = delete_duplicates(head)

# puts "After:"
# print_list(head)