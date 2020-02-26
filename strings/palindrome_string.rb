# Palindrome String
# Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.

# Example:

# "A man, a plan, a canal: Panama" is a palindrome.

# "race a car" is not a palindrome.

# Return 0 / 1 ( 0 for false, 1 for true ) for this problem

class Solution
    # @param a : string
    # @return an integer
    def isPalindrome(a)
        str = a.gsub(/[^0-9A-Za-z]/, '').downcase
        str == str.reverse ? 1 : 0
    end
end
