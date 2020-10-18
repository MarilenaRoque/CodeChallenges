# Min Stack
# Create a Stack that contains the standard push and pop methods.
# It should also contain another method min that returns the minimum number in the Stack.

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

  def min
    if @head.nil?
      min = 'error'
    else
      x = @head
      min = @head.value
      until x.nil?
        min = x.value if x.value < min
        x = x.previous_node
      end
    end
    min
  end
end

stack = Stack.new
stack.push(3)
stack.push(5)
puts stack.min
# => 3

stack.pop
stack.push(7)
puts stack.min
# => 3

stack.push(2)
puts stack.min
# => 2

stack.pop
puts stack.min
# => 3
