# @param {Integer[]} nums
# @return {Integer[]}
# Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].
# Input: nums = [1,2,3,4]
# Output: [24,12,8,6]
def product_except_self(nums)
    total   = 1
    product = []
    nums.each do |num|
        product << total
        total *= num
    end

    total = 1
    (nums.length - 1).downto(0) do |index|
        product[index] = total * product[index]
        total *= nums[index]
    end
    product
end
