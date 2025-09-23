class Stack
  def initialize
    @stack = []
  end

  def push(value)
    @stack << value
  end

  def pop
    @stack.pop
  end

  def peek
    @stack.last
  end
end

new_obj = Stack.new

new_obj.push(1)
new_obj.push(2)
new_obj.push(3)

puts new_obj.pop
puts new_obj.peek
puts new_obj