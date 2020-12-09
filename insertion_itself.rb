def insertion_sort(array, count, insert)
    inserted = false
    while count >= 0 
      if array[count] > insert 
        array[count + 1] = array[count]
      elsif array[count] <= insert
        array[count + 1] = insert
        inserted = true
        break
      end
      count -= 1 
    end
    array[0] = insert if !inserted
    puts array.join(' ')
  end
  
  #count = array.length - 2;
  #insert = array[array.length - 1 ]
  
  
  def sort_itself(array)
    (1).upto(array.length - 1) do |i|
      insert = array[i]
      count = i - 1
      insertion_sort(array, count, insert)
    end
  end
  
  sort_itself([1, 4, 3, 6, 9, 2])
  # => 1 4 3 6 9 2
  #    1 3 4 6 9 2
  #    1 3 4 6 9 2
  #    1 3 4 6 9 2