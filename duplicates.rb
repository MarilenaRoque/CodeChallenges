def duplicates(arr1, arr2)
    count = 0
    arr1.each do |item|
      index = arr2.find_index(item)
      arr2.delete_at(index)
    end
    return arr2.sort
  end
  
  p duplicates([203, 204, 205, 206, 207, 208, 203, 204, 205, 206], [203, 204, 204, 205, 206, 207, 205, 208, 203, 206, 204, 205, 206])
  # => [204, 205, 206]