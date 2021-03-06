# Using the array index

def binary_tree_height
  found = false
  h = 1 
  start_range = 0
  end_range = 0
  found = false
  while found == false do
    puts "Range: #{start_range}...#{end_range}"
    if (start_range..end_range).include?(array_tree.length - 1)
      found = true
    else
      h+=1
    end
    start_range = end_range + 1
    end_range = ((2**h)-1) + start_range
  end
  return h
end

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

  def pre_order(node)
    if node == nil
      return ''
    end
  
    result = "#{node.data} "
    result += pre_order(node.left)
    result += pre_order(node.right)
  end


#   Built that function
  def post_order(node)
    if node == nil
      return ''
    end

    result = post_order(node.left)
    result += post_order(node.right)
    result += "#{node.data} "
  
  end

# How tall is the tree using recursion
puts array_to_tree([2, 7, 5, 2, 6, 0, 9])

