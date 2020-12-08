def insertion_sort(array)
    count = array.length - 2;
    insert = array[array.length - 1 ]
    inserted = false
    while count >= 0 
      if array[count] > insert 
        array[count + 1] = array[count]
      elsif array[count] <= insert
        array[count + 1] = insert
        inserted = true
        break
      end
      puts array.join(' ')
      count -= 1 
    end
    array[0] = insert if !inserted
    puts array.join(' ')
  end
  
  insertion_sort([1, 3, 2])
  # => 1 3 3
  #    1 2 3
  
  puts '-' * 20
  
  insertion_sort([1, 4, 6, 9, 3])
  # => 1 4 6 9 9
  #    1 4 6 6 9
  #    1 4 4 6 9
  #    1 3 4 6 9