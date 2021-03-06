class Node
  attr_accessor :value, :next_node, :prev_node

  def initialize(value, next_node = nil, prev_node = nil)
    @value = value
    @next_node = next_node
    @prev_node = prev_node
  end
end

class Deque
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def insertFirst(value)
    new_node = Node.new(value)
    if @head.nil?
      @tail = new_node
    else
      new_node.next_node = @head
      @head.prev_node = new_node
    end
    @head = new_node
  end

  def insertLast(value)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
    else
      @tail.next_node = new_node
      new_node.prev_node = @tail
    end
    @tail = new_node
  end

  def deleteFirst
    if head.nil?
      puts 'Error: Deque empty'
    elsif @head.next_node.nil?
      @head = nil
      @tail = nil
    else
      @head.next_node.prev_node = nil
      @head = @head.next_node
    end
  end

  def deleteLast
    if @tail.nil?
      puts 'error: deque is empty!'
    elsif @tail.prev_node.nil?
      @head = nil
      @tail = nil
    else
      @tail = @tail.prev_node
      @tail.next_node = nil
    end
  end

  def printValues
    return puts 'error' if @head.nil?

    compare = @head
    until compare.nil?
      puts compare.value
      compare = compare.next_node
    end
  end
end

def sliding_maximum(arr, k)
  deq = Deque.new
  deq.insertFirst(0)
  1.upto(k - 1) do |i|
    deq.deleteLast while !deq.tail.nil? && arr[deq.tail.value] <= arr[i]
    deq.insertLast(i)
  end
  puts arr[deq.head.value]
  k.upto(arr.length - 1) do |i|
    deq.deleteFirst if deq.head.value <= (i - k)
    deq.deleteLast while !deq.tail.nil? && arr[deq.tail.value] <= arr[i]
    deq.insertLast(i)
    puts arr[deq.head.value]
  end
end

sliding_maximum([12, 1, 78, 90, 57, 89, 56], 3)

# deq = Deque.new
# deq.insertFirst(20)
# deq.insertFirst(5000)
# deq.insertLast(50)
# deq.insertLast(150)

# deq.printValues
# deq.deleteLast
# puts "I am the new tail #{deq.tail.value}"
# deq.printValues
# deq.deleteLast
# puts "I am the new tail #{deq.tail.value}"
# deq.printValues
# deq.deleteLast
# puts "I am the new tail #{deq.tail.value}"
# deq.deleteLast
# deq.printValues
