def depth_first_search(graph)
    output= [0];
    new_node = false;
    first = true;
    reminder = []
    node = 0;
    count = 0;
    while true
      new_node = false;
      first = false;
      graph[node].each do |item|
        if !output.include?(item) && !new_node
            output << item
            new_node = true
            if reminder.include?(item)
              reminder.delete(item)
            end
        elsif !output.include?(item) && !reminder.include?(item)
            reminder << item
        end
      end
      if new_node
        node = output[output.length - 1 ]
      elsif !reminder.empty?
        node = reminder[reminder.length - 1 ]
        output << reminder[reminder.length - 1 ]
        reminder.delete_at(reminder.length - 1)
      else
        break
      end
    end
    return output
  end

  p depth_first_search({
    0 => [2], 
    1 => [4], 
    2 => [5, 0, 3], 
    3 => [2], 
    4 => [1, 5], 
    5 => [4, 2]
  })
  # => [0, 2, 5, 4, 1, 3]


#   depth_first_search({0=>[1, 2], 1=>[0, 2], 2=>[0, 1, 3, 4, 5], 3=>[2, 4], 4=>[3, 2], 5=>[2]})

#   expected: [0, 1, 2, 3, 4, 5]
#      got: [0, 1, 2, 3, 5, 4]