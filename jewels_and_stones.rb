# @param {String} j
# @param {String} s
# @return {Integer}
def num_jewels_in_stones(j, s)
    s = s.split('')
    hash = {};
    counter = 0
    s.each do |el|
        if hash[el]
            hash[el] = hash[el] + 1 
        else
            hash[el] = 1
        end
    end
    
    j = j.split('')
    j.each do |el|
        if hash[el]
            counter = counter + hash[el] 
        end
    end
    return counter
end