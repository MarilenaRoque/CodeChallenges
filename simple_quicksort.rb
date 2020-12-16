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
  return left, pivot, right
end

def simple_quicksort(array, result=[])
  return array if array.length <= 1
  left, pivot, right = partition(array)
  result = result.flatten.join(' ') + (([simple_quicksort(left, result), pivot, simple_quicksort(right, result)]).flatten.join(' '))
  puts result
  return result
end

simple_quicksort([5, 8, 1, 3, 7, 10, 2])
# => 2 3
#    1 2 3
#    7 8 10
#    1 2 3 5 7 8 10