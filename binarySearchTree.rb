class Node
    attr_reader :data
    attr_accessor :left, :right
  
    def initialize(data)
      @data = data
    end
  end
  
  class BST
    
    def initialize()
      @root = nil
    end
    
    def insert(node, compare = @root)
      if @root.nil?
        @root = Node.new(node)
      elsif node > compare.data
        if compare.right.nil? 
          return compare.right = Node.new(node)
        else
          insert(node, compare.right)
        end
      else
        if compare.left.nil? 
          return compare.left = Node.new(node)
        else
          insert(node, compare.left)
        end
      end
    end
  
    def pre_order(node = @root)
      if node == nil
      return ''
    end
    
    result = "#{node.data} "
    result += pre_order(node.left)
    result += pre_order(node.right)
    end
  end
  
  
  def binary_search_tree(array)
    tree = BST.new
    array.each { |e| tree.insert(e) }
    tree.pre_order
  end
  
  puts binary_search_tree([8, 3, 10, 1, 6, 14, 4, 7, 13])
  # => "8 3 1 6 4 7 10 14 13"