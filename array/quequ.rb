class Queue
  def initialize
    @queue = []
  end

  def enqueue(item)
    @queue.push(item)
  end

  def dequeue
    @queue.shift
  end

  def front
    @queue.first
  end

  def empty?
    @queue.empty?
  end

  def size
    @queue.length
  end

  def display
    puts @queue.inspect
  end
end

queue = Queue.new
queue.enqueue(10)
queue.enqueue(20)
queue.enqueue(30)
queue.display

puts "Dequeued: #{queue.dequeue}"
puts "Front element: #{queue.front}"