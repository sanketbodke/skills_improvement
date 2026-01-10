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

def displayList(head)
  current = head
  values = []

  while current
    values << current.val
    current = current.next
  end
  
  values
end  

arr = [1, 1, 2, 3, 3]
head = create_a_list(arr)

puts displayList(head)

# head = ListNode.new(arr[0])  # arr[0] = 1
# current = head

# head/current
#      ▼
# ┌─────────┐
# │ val: 1  │
# │ next: ●─┼──▶ nil
# └─────────┘

# current.next = ListNode.new(1)
# current = current.next

# head          current
#  ▼               ▼
# ┌─────────┐    ┌─────────┐
# │ val: 1  │    │ val: 1  │
# │ next: ●─┼───▶│ next: ●─┼──▶ nil
# └─────────┘    └─────────┘

# current.next = ListNode.new(2)
# current = current.next

# head                     current
#  ▼                          ▼
# ┌─────────┐    ┌─────────┐    ┌─────────┐
# │ val: 1  │    │ val: 1  │    │ val: 2  │
# │ next: ●─┼───▶│ next: ●─┼───▶│ next: ●─┼──▶ nil
# └─────────┘    └─────────┘    └─────────┘

# current.next = ListNode.new(3)
# current = current.next

# head                                    current
#  ▼                                         ▼
# ┌─────────┐    ┌─────────┐    ┌─────────┐    ┌─────────┐
# │ val: 1  │    │ val: 1  │    │ val: 2  │    │ val: 3  │
# │ next: ●─┼───▶│ next: ●─┼───▶│ next: ●─┼───▶│ next: ●─┼──▶ nil
# └─────────┘    └─────────┘    └─────────┘    └─────────┘

# current.next = ListNode.new(3)
# current = current.next

# head                                                   current
#  ▼                                                        ▼
# ┌─────────┐    ┌─────────┐    ┌─────────┐    ┌─────────┐    ┌─────────┐
# │ val: 1  │    │ val: 1  │    │ val: 2  │    │ val: 3  │    │ val: 3  │
# │ next: ●─┼───▶│ next: ●─┼───▶│ next: ●─┼───▶│ next: ●─┼───▶│ next: ●─┼──▶ nil
# └─────────┘    └─────────┘    └─────────┘    └─────────┘    └─────────┘


# Step 1: current.next = ListNode.new(val)
#         ┌─────────┐                    ┌─────────┐
#         │current  │                    │  new    │
#         │ val: 1  │ ────link────────▶ │ val: 1  │
#         │ next: ●─┼────────────────────▶│ next: nil│
#         └─────────┘                    └─────────┘

# Step 2: current = current.next
#                                       current
#                                          ▼
#         ┌─────────┐                    ┌─────────┐
#         │  old    │                    │  new    │
#         │ val: 1  │ ────────────────▶ │ val: 1  │
#         │ next: ●─┼────────────────────▶│ next: nil│
#         └─────────┘                    └─────────┘