class Node
	attr_reader :data
  attr_accessor :left, :right
  
  def initialize data
    @data = data
  end
end

# helper function
def array_to_tree(array, i=0)
    return nil if i >= array.length || array[i] == 0

    node = Node.new(array[i])
    node.left = array_to_tree(array, 2*i+1)
    node.right = array_to_tree(array, 2*i+2)

    node
end

def binary_tree_height(array_tree)
    tree = array_to_tree(array_tree, 0)
    return height(tree)
  end

# helper function
def height(tree)
    return 0 if tree.nil?
    return 1 + [height(tree.right), height(tree.left)].max
end

def balanced_tree?(array)
  root = array_to_tree(array)
  return is_balanced?(root)
end

def is_balanced?(tree)
    return true if tree.nil?
    if !([-1,0,1].include?(height(tree.right) - height(tree.left)))
        return false
    end
    return is_balanced?(tree.right) && is_balanced?(tree.left)
end

puts balanced_tree?([1, 2, 0, 3, 4, 0, 0])
# => false


puts balanced_tree?([1, 2, 3, 4, 5, 6, 7])
# => true

puts balanced_tree?([2,7,5,2,6,5,9,0,0,5,11,0,0,14,0])
# => false