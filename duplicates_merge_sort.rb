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
      elsif array1[idx_1] <= array2[idx_2]
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
  end

def duplicates(arr1, arr2)
  count =  0
  rest = []
  count_hash = Hash.new
  arr1.each do |item|
    if count_hash.has_key?(item)
      count_hash[item] +=1 
    else
      count_hash[item] = 1 
    end
  end
  arr2.each do |numb|
    if !count_hash.has_key?(numb) || count_hash[numb] == 0
      rest << numb
    else
      count_hash[numb] -= 1 
    end
  end
  full_merge_sort(rest)
end

p duplicates([203, 204, 205, 206, 207, 208, 203, 204, 205, 206], [203, 204, 204, 205, 206, 207, 205, 208, 203, 206, 204, 205, 206])
# => [204, 205, 206]