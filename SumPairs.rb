def two_sum(nums, target)
    arr =[]
    result =[]
    nums.each_with_index do |item, idx|
        arr << [item, idx]
    end
    sorted = arr.sort { |x,y| x[0] <=> y[0] }
    sorted.each_with_index do |el, idx_first|
        start_range = idx_first + 1
        end_range = sorted.length - 1
        find = target - el[0]

        while end_range > start_range do

            trial_idx = start_range + ((end_range.to_f - start_range.to_f)/2).floor
            if start_range + 1 == end_range
                if sorted[end_range][0] == find
                    result << sorted[end_range][1]
                    result << el[1]
                    break
                else
                    end_range = end_range - 1
                end
            end
            if sorted[trial_idx][0] == find
                result << sorted[trial_idx][1]
                result << el[1]
                break
            elsif sorted[trial_idx][0] > find
                end_range = trial_idx
            else
                start_range = trial_idx
            end
        end
    end
    return result
end

puts two_sum([2,7,11,15, 18, 21], 18);
# https://leetcode.com/submissions/detail/418837331/