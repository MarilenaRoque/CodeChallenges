# Lists

# Create your own LinkedList  class for storing integers which should include two methods:
# add(number) - Add a new Node to the end of the list with a value of number. Nothing needs to be returned.
# get(index) - Return the value of the Node at position `index` in the List.

class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  def initialize
    @tail = nil
    @head = nil
  end

  def add(number)
    new_node = Node.new(number)
    if @tail.nil?
      @head = new_node
    else
      @tail.next_node = new_node
    end
    @tail = new_node
  end

  def get(index)
    node = get_node(index)
    node.value
  end

  def add_at(index, value)
    new_node = Node.new(value)
    if index.zero?
      if @head.nil?
        @tail = new_node
      else
        new_node.next_node = @head
      end
      @head = new_node
    else
      prev_node = get_node(index - 1)
      if prev_node.next_node.nil?
        @tail = new_node
      else
        new_node.next_node = prev_node.next_node
      end
      prev_node.next_node = new_node
    end
  end

  def remove(index)
    if index.zero?
      @head = @head.next_node
    else
      prev_node = get_node(index - 1)
      deleted_node = prev_node.next_node
      prev_node.next_node = deleted_node.next_node
      @tail = prev_node if prev_node.next_node.nil?
    end
  end

  private

  def get_node(index)
    current_node = @head
    index.times do
      current_node = current_node.next_node
    end
    current_node
  end
end

list = LinkedList.new

list.add(3)
list.add(5)
list.add_at(1, 11)
list.add_at(0, 13)

puts list.get(2)
# => 11

puts list.get(3)
# => 5
