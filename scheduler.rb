def merge_sort(array1, array2)
    idx_1 = 0
    idx_2 = 0
    sorted_array = []
    n = array1.length + array2.length
    n.times do |count|
      if array2[idx_2].nil?
        sorted_array << array1[idx_1]
        idx_1 +=1 
      elsif (array1[idx_1].nil? && array2[idx_2])
        sorted_array << array2[idx_2]
        idx_2 +=1
      elsif array1[idx_1][1] <= array2[idx_2][1]
        sorted_array << array1[idx_1]
        idx_1 +=1
      else
        sorted_array << array2[idx_2]
        idx_2 +=1
      end
    end
    sorted_array
  end
  
  def full_merge_method(array)
    return array if array.length < 2 
    idx_middle = (array.length/2).floor 
    left = array.slice(0,idx_middle)
    right = array.slice(idx_middle, array.length - 1)
    sorted = merge_sort(full_merge_method(left) , full_merge_method(right))
    return sorted
  end
  



def time_scheduler(array)
  ### Transform array of arrays
  n = array.length/2
  events = []
  count = 0
  n.times do
    events << [array[count], array[count + 1]]
    count +=2
  end
  ### sort using merge sort
  sorted = full_merge_method(events)
  
  presence = [sorted.shift]
  sorted.each do |item|
    if item[0] >= presence.last[1]
      presence << item
    end
  end
  return presence
  
end

p time_scheduler([4, 8, 1, 3, 7, 9, 5, 6])
# => [[1,3], [5,6], [7,9]]