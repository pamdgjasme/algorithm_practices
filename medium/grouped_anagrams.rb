# @param {String[]} strs
# @return {String[][]}
# Given an array of strings strs, group the anagrams together. You can return the answer in any order.
# Input: strs = ["eat","tea","tan","ate","nat","bat"]
# Output: [["bat"],["nat","tan"],["ate","eat","tea"]]

def group_anagrams(strs)
    grouped_anagrams = {}
    strs.each do |str|
        str_bytes = str.bytes.sum
        grouped_anagrams[str_bytes] = [] unless grouped_anagrams.key?(str_bytes)

        grouped_anagrams[str_bytes] << str
    end

    grouped_anagrams.values
end
