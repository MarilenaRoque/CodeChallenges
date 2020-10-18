#Sum of the left-most side elements on an a binary tree stored on an array

def leftmost_nodes_sum(array)
    node_index = 0
    sum = 0
    while array[node_index] do
      sum += array[node_index]
      node_index = (2*node_index) + 1
    end
    return sum
  end
  
  puts leftmost_nodes_sum([2, 7, 5, 2, 6, 0, 9])
  # => 11