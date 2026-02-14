# 2. Add Two Numbers
# Medium
# Topics
# Companies
# You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order, and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.

# You may assume the two numbers do not contain any leading zero, except the number 0 itself.

# Input: l1 = [2,4,3], l2 = [5,6,4]
# Output: [7,0,8]
# Explanation: 342 + 465 = 807.
# Example 2:

# Input: l1 = [0], l2 = [0]
# Output: [0]
# Example 3:

# Input: l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]
# Output: [8,9,9,9,0,0,0,1]

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
  return [] if head.nil?
  
  current = head
  result = []

  while current
    result << current.val
    current = current.next
  end  

  result
end  

def linked_list_to_array(head)
  return [] if head.nil?
  
  result = []
  current = head
  while current
    result << current.val
    current = current.next
  end
  result
end

def add_two_numbers(l1, l2)
  arr1 = linked_list_to_array(l1)
  arr2 = linked_list_to_array(l2)
  
  num1 = arr1.reverse.join('').to_i
  num2 = arr2.reverse.join('').to_i
  
  sum = num1 + num2
  
  sum_digits = sum.to_s.reverse.split('').map(&:to_i)
  
  create_a_list(sum_digits)
end 

list_1 = [2, 4, 3]
list_2 = [5, 6, 4]

head_list_1 = create_a_list(list_1)
head_list_2 = create_a_list(list_2)

result_head = add_two_numbers(head_list_1, head_list_2)
