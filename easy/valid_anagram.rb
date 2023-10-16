# @param {String} s
# @param {String} t
# @return {Boolean}
# Given two strings s and t, return true if t is an anagram of s, and false otherwise.
def is_anagram(s, t)
    return false unless s.length === t.length

    sanitized_string(s) === sanitized_string(t)
end

def sanitized_string(str)
    str.gsub(/\W/, '').downcase.chars.sort.join
end

