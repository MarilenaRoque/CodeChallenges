def find_pairs(array, k)
  hash = Hash.new
  pairs = []
  array.each do |item|
    rest = k - item 
    if hash.has_key?(rest)
      pairs << [rest, item]
    else
      hash[item] = nil
    end
  end
  return pairs
  
end

p find_pairs([1, 9, 11, 13, 2, 3, 7], 12)
# => [[1, 11], [9, 3]]