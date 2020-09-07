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
        end
        @tail = new_node
    end

end

