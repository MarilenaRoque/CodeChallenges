class Node
    attr_reader :data
    attr_accessor :left, :right
  
    def initialize(data)
      @data = data
    end
end
  
  def array_to_tree(array, i)
    return nil if i >= array.length || array[i] == 0
  
    node = Node.new(array[i])
    node.left = array_to_tree(array, 2*i+1)
    node.right = array_to_tree(array, 2*i+2)
  
    node
  end
  
  def binary_tree_height(array_tree)
    tree = array_to_tree(array_tree, 0)
    return recursive_height(tree)
  end
  
  def recursive_height(tree)
    return 0 if tree.nil?
    return 1 + [recursive_height(tree.right), recursive_height(tree.left)].max
  end
  
  puts binary_tree_height([2, 7, 5, 2, 6, 0, 9])
  # => 3