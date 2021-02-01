nums = [4,3,2,7,8,2,3,1]

def find_disappeared_numbers(nums)
    array_complete = (1...nums.length).to_a
    array_complete - nums
end

p find_disappeared_numbers(nums)