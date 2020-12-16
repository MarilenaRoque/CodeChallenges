def advanced_partition(array, start_i, end_i)
    pivot = end_i
    first_large = nil
    (start_i).upto(end_i - 1) do |count|
      if array[count] > array[pivot] && !first_large
        first_large = count
      elsif array[count] <= array[pivot] && first_large
        keeper = array[first_large]
        array[first_large] = array[count]
        array[count] = keeper
        if count - first_large > 1 
          first_large += 1
        else
          first_large = count
        end
      end
    end
    if first_large
      keeper = array[first_large]
      array[first_large] = array[pivot]
      array[pivot] = keeper
      pivot = first_large
    end
    puts array.to_s
    return array, pivot, start_i, end_i
  end
  def advanced_quicksort(array, start_i = 0, end_i = array.length-1)
    return if end_i - start_i < 1
    array, pivot, start_i, end_i = advanced_partition(array, start_i, end_i)
    advanced_quicksort(array, start_i, pivot -1)
    advanced_quicksort(array, pivot+1, end_i)
  end
  
  advanced_quicksort([1, 3, 9, 8, 2, 7, 5])
  # => 1 3 2 5 9 7 8
  #    1 2 3 5 9 7 8
  #    1 2 3 5 7 8 9