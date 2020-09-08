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
            puts "Error: Deque empty"
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
            puts "error: deque is empty!"
        elsif @tail.prev_node.nil?
            @head = nil
            @tail = nil
        else
            @tail = @tail.prev_node
            @tail.next_node = nil
        end    
    end

    def printValues
        return puts "error" unless !@head.nil?
        compare = @head
        while !compare.nil?
            puts compare.value
            compare = compare.next_node
        end
    end

end

deq = Deque.new
deq.insertFirst(20)
deq.insertFirst(5000)
deq.insertLast(50)
deq.insertLast(150)

deq.printValues
deq.deleteLast
puts "I am the new tail #{deq.tail.value}"
deq.printValues
deq.deleteLast
puts "I am the new tail #{deq.tail.value}"
deq.printValues
deq.deleteLast
puts "I am the new tail #{deq.tail.value}"
deq.deleteLast
deq.printValues