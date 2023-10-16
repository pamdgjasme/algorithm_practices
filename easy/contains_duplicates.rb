# @param {Integer[]} nums
# @return {Boolean}
# Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.
def contains_duplicate(nums)
    nums.uniq.length != nums.length
end
