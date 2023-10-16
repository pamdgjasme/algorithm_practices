# @param {String[]} strs
# @return {String[][]}
# Given an array of strings strs, group the anagrams together. You can return the answer in any order.
# Input: strs = ["eat","tea","tan","ate","nat","bat"]
# Output: [["bat"],["nat","tan"],["ate","eat","tea"]]
def group_anagrams(strs)
    grouped_anagrams = {}
    strs.each do |str|
        sorted_str = str.chars.sort
        grouped_anagrams[sorted_str] = [] unless grouped_anagrams.key?(sorted_str)

        if sorted_str === str.chars.sort
            grouped_anagrams[sorted_str] << str
        else
            grouped_anagrams[str] = str
        end
    end
    grouped_anagrams.values
end
