def two_sum(nums, target)
    arr =[]
    result =[]
    nums.each_with_index do |item, idx|
        arr << [item, idx]
    end
    find = false
    sorted = arr.sort { |x,y| x[0] <=> y[0] }
    sorted.each_with_index do |el, first_index|
        (first_index).upto(nums.length - 1) do |sec_index|
            if el[0] + sorted[sec_index][0] == target && first_index != sec_index
              result << el[1]
              result << sorted[sec_index][1]
              find = true
              break
            end
            break if el[0] + sorted[sec_index][0] > target
        end
        break if find == true
    end
    return result
end

puts two_sum([2,7,11,15, 18, 21], 18);
# https://leetcode.com/submissions/detail/418837331/