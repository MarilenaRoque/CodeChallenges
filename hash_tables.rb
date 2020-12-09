def hash_table(arr)
    hash = Hash.new
    arr.each do |item|
      test = item if item >= 0 
      test = item * -1 if item < 0
      index = test % 11
      index = -index  if index < 0
      if hash.has_key?(index)
        hash[index] << item
      else
        hash[index] = [item]
      end
    end
    new_array = []
    (0).upto(10) do |counter|
      new_array << hash[counter] if hash.has_key?(counter)
    end
    return new_array.flatten
  end
  
  #p hash_table([12, 24, 125, 5, 91, 1106, 2, 1021, 29, 3536, 10])
  # => [12, 24, 2, 91, 125, 5, 3536, 1106, 29, 1021, 10]
  
  #p hash_table([2, 341, 73, 8265, 234004, 602, 7400000, 200000000])
  # => [341, 234004, 2, 200000000, 7400000, 8265, 73, 602]
  
  hash_table([2367, -65325, 134, -185007, 3291, 7832, -65326, 789, 980, -3289, 3])
  #=> [7832, -3289, 980, 2367, 134, 3291, 3, -65325, -65326, 789, -185007]