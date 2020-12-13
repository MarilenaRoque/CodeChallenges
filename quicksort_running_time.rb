def insertion_sort(copy, count, insert, run_time)
    inserted = false
    while count >= 0
      if copy[count] > insert 
        copy[count + 1] = copy[count]
        run_time +=1
      elsif copy[count] <= insert
        copy[count + 1] = insert
        inserted = true
        break
      end
      count -= 1 
    end
    copy[0] = insert if !inserted
    return run_time
  end
  
def running_time(copy)
  run_time = 0
    (1).upto(copy.length - 1) do |i|
      insert = copy[i]
      count = i - 1
      run_time = insertion_sort(copy, count, insert, run_time)
    end
    run_time
  
end

def advanced_partition(array, start_i, end_i, swap=0)
    small = start_i - 1
    pivot = end_i
    (start_i).upto(end_i) do |index|
      if array[index] <= array[end_i]
        keeper = array[small + 1]
        array[small + 1] = array[index]
        array[index]=keeper
        small = small + 1 
        swap += 1 
        if index == pivot
          pivot = small
        end
      end 
    end 
    return array, pivot, start_i, end_i, swap
end

def quicksort(array, start_i = 0, end_i = array.length-1, swap = 0)
  return swap if end_i - start_i < 1
  array, pivot, start_i, end_i, count = advanced_partition(array, start_i, end_i)
  count += quicksort(array, start_i, pivot -1, swap) + quicksort(array, pivot+1, end_i, swap)
end

def quicksort_running_time(array)
  copy = array.dup
  running_time(copy) - quicksort(array)
end

puts quicksort_running_time([1, 3, 9, 8, 2, 7, 5])
# => 1