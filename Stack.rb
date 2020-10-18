# Stack
# Create a Stack with two methods push and pop.
# Use your LinkedList class to keep track of the elements internally.

class Node
  attr_accessor :value, :previous_node

  def initialize(value)
    @value = value
    @previous_node = nil
  end
end

class Stack
  attr_accessor :head

  def initialize
    @head = nil
  end

  def push(number)
    x = Node.new(number)
    x.previous_node = @head
    @head = x
  end

  def pop
    if @head.nil?
      puts 'Empty List'
    else
      poped = @head.value
      @head.previous_node
      @head = @head.previous_node
    end
    poped
  end
end
stack = Stack.new
stack.push(3)
stack.push(5)
puts stack.pop
# => 5

stack.push(2)
stack.push(7)
puts stack.pop
# => 7

puts stack.pop
# => 2

puts stack.pop
# => 3
