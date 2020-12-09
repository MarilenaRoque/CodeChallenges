def array_to_hash(array)
    new_hash = Hash.new
    array.each do |item|
      if new_hash.has_key?(item)
        new_hash[item] = new_hash[item] + 1
      else
        new_hash[item] = 1
      end
    end
    return new_hash
  end
  
  
  
  def appears_most_times(array)
    new_hash = array_to_hash(array)
    value =  new_hash.max_by{|k,v| v}
    return value[0]
  end
  
  puts appears_most_times([1, 2, 3, 1, 5])
  # => 1
  
  puts appears_most_times([23, 43, 67, 88, 42, 35, 77, 88, 99, 11])
  # => 88
  
  puts appears_most_times([4376, -345, -345, 4376, -345, 84945, 4376, -345, -26509, 4376, 84945, 84945, -26509, 896341, 4376])
  # => 4376