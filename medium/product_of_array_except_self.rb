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

    # product = [1, 1, 2, 6]
    total = 1
    # 3 2 1 0
    (nums.length - 1).downto(0) do |index|
        product[index] = total * product[index]
        total *= nums[index]
    end
    product
end

# Detailed
# def product_except_self(nums)
#     prefix_array  = []
#     postfix_array = []
#     product_array = []
#     prefix  = 1
#     postfix = 1
#     nums.each_with_index do |num, index|
#         prefix_array << prefix
#         prefix *= num
        
#         #0 iteration
#         #prefix_array = [1]
#         #prefix = 1 * 1 = 1

#         #1 iteration
#         #prefix_array = [1, 1]
#         #prefix = 1 * 2 = 2

#         #2 iteration
#         #prefix_array = [1, 1, 2]
#         #prefix = 2 * 3 = 6

#         #3 iteration
#         #prefix_array = [1, 1, 2, 6]
#         #prefix = 6 * 4 = 24 -> Not needed

#         postfix_array << postfix
#         postfix *= nums[~index]

#         #0 iteration
#         #postfix_array = [1]
#         #postfix = 1 * 4 = 4

#         #1 iteration
#         #postfix_array = [1, 4]
#         #postfix = 4 * 3 = 12

#         #2 iteration
#         #postfix_array = [1, 4, 12]
#         #postfix = 12 * 2 = 24

#         #3 iteration
#         #postfix_array = [1, 4, 12, 24]
#         #postfix = 24 * 1 = 24 -> Not needed
#     end

#     puts "PRE #{prefix_array}"
#     puts "POST #{postfix_array}"

#     (0).upto(nums.length - 1) do |index|
#         product_array << prefix_array[index] * postfix_array[~index]
#     end

#     puts "OUT #{product_array}"
#     product_array
# end

