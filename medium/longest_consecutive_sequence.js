/**
 * @param {number[]} nums
 * @return {number}
 * Given an unsorted array of integers nums, return the length of the longest consecutive elements sequence.
 * Input: nums = [100,4,200,1,3,2]
 * Output: 4
 */
var longestConsecutive = function(nums) {
    if (nums.length == 0) {
        return 0;
    }

    nums = nums.sort((a, b) => a - b)
    consecutiveCount     = 1
    prevConsecutiveCount = 1
    for (index = 0; index < nums.length; index++) {
        prevNum = nums[index - 1]
        num     = nums[index]

        if (num === prevNum) { continue; }

        if (num - prevNum === 1) {
            consecutiveCount++;
            prevConsecutiveCount = storeHighestConsecutive(consecutiveCount, prevConsecutiveCount);
        } else {
            consecutiveCount = 1;
        }
    }
    return prevConsecutiveCount;
};

var storeHighestConsecutive = function(consecutiveCount, prevConsecutiveCount) {
    return consecutiveCount > prevConsecutiveCount ? consecutiveCount : prevConsecutiveCount;
}
