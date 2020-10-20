def binary_tree_height(array_tree)
    found = false
    h = 0 
    start_range = 0
    end_range = 0 
    while found ==false do
      puts "Range: #{start_range}...#{end_range}"
      if (start_range..end_range).include?(array_tree.length - 1)
        found = true
      else
        h+=1
      end
      start_range = end_range + 1
      end_range = ((2**h)-1) + start_range
    end
    return h+1
  end
  
  puts binary_tree_height([2, 7, 5, 2, 6, 0, 9])