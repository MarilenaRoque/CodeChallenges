class Node
    attr_accessor :value, :next_node, :prev_node

    def initialize(value, next_node = nil, prev_node = nil)
        @value = value
        puts @value
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

    #Insert Front
    def insertFirst(value)
        new_node = Node.new(value)
        puts new_node.prev_node
        if @head.nil?
            @tail = new_node
            puts @tail
        else
            @head.prev_node = new_node
        end
        @head = new_node
        puts @head
    end

    def insertLast

    end

end


deq = Deque.new

