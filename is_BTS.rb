class Node
    attr_reader :data
    attr_accessor :left, :right

    def initialize(data)
        @data = data
    end
end

def array_to_tree(array, i=0)
    return nil if i >= array.length || array[i] == 0

    node = Node.new(array[i])
    node.left = array_to_tree(array, 2*i+1)
    node.right = array_to_tree(array, 2*i+2)

    node
end

def search_tree?(array)
    root = array_to_tree(array)
    result = is_BTS?(root, -1.0/0.0, +1.0/0.0)
end

def is_BTS?(root, min, max)
    return true if root.nil?
    return false if root.data < min || root.data > max
    return (is_BTS?(root.right, root.data, max) && is_BTS?(root.left, min, root.data))
end


puts search_tree?([10,10,19,-5,10,0,21])
# => true

puts search_tree?([10, 5, 7])
# => false

