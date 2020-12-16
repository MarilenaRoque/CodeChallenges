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
      elsif array1[idx_1] < array2[idx_2]
        sorted_array << array1[idx_1]
        idx_1 +=1
      else
        sorted_array << array2[idx_2]
        idx_2 +=1
      end
    end
    sorted_array
  end
  
  p merge_sort([1, 3, 9, 11], [2, 4, 6, 8])
  # => [1, 2, 3, 4, 6, 8, 9, 11]