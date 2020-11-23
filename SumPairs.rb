def two_sum(nums, target)
    result = []
    arr_new = nums
    nums.each_with_index do |el, i|
        rest = target - el
        arr_new[i] = 'X'
        found_idx = arr_new.index(rest)
        if found_idx
            result << i
            result << found_idx
        end
    end
    return result
end

puts two_sum([2,7,11,15, 18, 21], 18);
# https://leetcode.com/submissions/detail/418837331/