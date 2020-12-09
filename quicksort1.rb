def partition(array)
    left = []
    right = []
    pivot = array[0]
    array.each_with_index do |item, i|
      unless i == 0
        if item > pivot
          right << item
        else
          left << item 
        end
      end
    end
    array = left
    array << pivot
    array << right
    return array.flatten
    
  end
  
  p partition([4, 5, 3, 9, 1])
  # => [3, 1, 4, 5, 9]def partition(array)
  left = []
  right = []
  pivot = array[0]
  array.each_with_index do |item, i|
    unless i == 0
      if item > pivot
        right << item
      else
        left << item 
      end
    end
  end
  array = left
  array << pivot
  array << right
  return array.flatten
  
end

p partition([4, 5, 3, 9, 1])
# => [3, 1, 4, 5, 9]