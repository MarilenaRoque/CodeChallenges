##https://repl.it/student/submissions/13572216
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
      @head=new_node
    else
      @tail.next_node = new_node
    end
    @tail = new_node
  end

  def get(index)
    puts "The list is empt" if @head.nil?
    current = @head
    (index).times do
      current = current.next_node
    end
    return current.value
  end
end

list = LinkedList.new

list.add(3)
list.add(5)
puts list.get(1)
# => 5