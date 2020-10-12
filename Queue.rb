# Queue
# Create a Queue with the two methods add and remove. Use your LinkedList class to keep track of the elements internally.
# In this challenge, there's one more detail: If remove is called on the empty Queue, return -1.

class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class Queue
  def initialize
    @tail = nil
    @head = nil
  end

  def add(number)
    new_element = Node.new(number)
    if @head.nil?
      @head = new_element
    else
      @tail.next_node = new_element
    end
    @tail = new_element
    # puts " This is the new element #{new_element}"
    # puts " This is the new element previous node#{new_element.next_node}"
    # puts " This is the new element value #{new_element.value}"
    # puts "This is the head #{@head}"
    # puts "This is the head #{@tail}"
  end

  def remove
    if @head.nil?
      removed = -1
    else
      removed = @head.value
      @head = @head.next_node
    end
    removed
  end
end

queue = Queue.new

queue.add(3)
queue.add(5)
puts queue.remove
# => 3

queue.add(2)
queue.add(7)
puts queue.remove
# => 5

puts queue.remove
# => 2

puts queue.remove
# => 7

puts queue.remove
# => -1
