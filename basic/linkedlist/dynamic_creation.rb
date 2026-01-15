class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, next_node = nil)
    @val = val
    @next = next_node
  end
end

class LinkedListBuilder
  def create_dynamic_list
    print "How many elements do you want to enter? "
    n = gets.chomp.to_i  

    if n <= 0
      return nil
    end  

    puts "Now enter #{n} elements: "

    print "Element 1: "
    first_value = gets.chomp.to_i
    head = ListNode.new(first_value)
    current = head

    (2..n).each do |i|
      print "Element #{i}: "
      value = gets.chomp.to_i
      current.next = ListNode.new(value)
      current = current.next
    end

    head
  end

  def display_list(head)
    return "Empty List" if head.nil?
  
    result = []
    current = head
  
    while current
      result << current.val
      current = current.next
    end
  
    result.join(" -> ")
  end
end

builder = LinkedListBuilder.new
head = builder.create_dynamic_list

if head
  puts "Your list: #{builder.display_list(head)}"
else
  puts "\n No list was created."
end