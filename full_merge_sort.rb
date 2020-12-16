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
      elsif array1[idx_1].split(' ')[0].to_i <= array2[idx_2].split(' ')[0].to_i
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
  
  def full_merge_sort(array)
    sorted = full_merge_method(array)
    sorted = sorted.map do |item|
      item.split(' ')[1]
    end
  end
  
  full_merge_sort(["0 ab", "6 cd", "0 ef", "6 gh", "4 ij", "0 ab", "6 cd", "0 ef", "6 gh", "0 ij", "4 that", "3 be", "0 to", "1 be", "5 question", "1 or", "2 not", "4 is", "2 to", "4 the"])
  # => ["ab", "ef", "ab", "ef", "ij", "to", "be", "or", "not", "to", "be", "ij", "that", "is", "the", "question", "cd", "gh", "cd", "gh"]
  