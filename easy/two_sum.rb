# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
# Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
def two_sum(nums, target)
    right_indeces = []
    nums.each_with_index do |num, index|
        diff = target - num
        second_index = nums.index(diff)
        
        unless second_index.nil?
            next if index === second_index

            right_indeces = [index, second_index]
            break
        end
    end

    right_indeces
end
