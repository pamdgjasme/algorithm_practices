# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
# Given an integer array nums and an integer k, return the k most frequent elements. You may return the answer in any order.
# Input: nums = [1,1,1,2,2,3], k = 2
# Output: [1,2]

def top_k_frequent(nums, k)
    nums_storage = {}
    nums.each do |num|
        nums_storage[num] = 0 if nums_storage[num].nil?
        nums_storage[num] = nums_storage[num] + 1
    end
    nums_storage = nums_storage
        .sort_by { |obj| obj[1] }
        .reverse
        .to_h

    nums_storage.keys.take(k)
end
