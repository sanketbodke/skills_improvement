class Stack
  def initialize
    @stack = []
  end

  def push(item)
    @stack.push(item)
  end

  def pop
    @stack.pop
  end

  def peek
    @stack.last
  end

  def empty?
    @stack.empty?
  end

  def size
    @stack.length
  end

  def display
    puts @stack.inspect
  end
end

stack = Stack.new
stack.push(10)
stack.push(20)
stack.push(30)
stack.display

puts "Popped: #{stack.pop}"
puts "Top element: #{stack.peek}"