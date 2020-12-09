def insertion_sort(array, count, insert, run_time)
    inserted = false
    while count >= 0
      if array[count] > insert 
        array[count + 1] = array[count]
        run_time +=1
      elsif array[count] <= insert
        array[count + 1] = insert
        inserted = true
        break
      end
      count -= 1 
    end
    array[0] = insert if !inserted
    return run_time
  end
  
def running_time(array)
  run_time = 0
    (1).upto(array.length - 1) do |i|
      insert = array[i]
      count = i - 1
      run_time = insertion_sort(array, count, insert, run_time)
    end
    run_time
  
end

puts running_time([2, 1, 3, 1, 2])
# => 4