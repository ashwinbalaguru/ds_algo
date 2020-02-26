# Minimum Characters required to make a String Palindromic

# Given an string A. The only operation allowed is to insert characters in the beginning of the string.

# Find how many minimum characters are needed to be inserted to make the string a palindrome string.



# Input Format

# The only argument given is string A.
# Output Format

# Return the minimum characters that are needed to be inserted to make the string a palindrome string.
# For Example

# Input 1:
#     A = "ABC"
# Output 1:
#     2
#     Explanation 1:
#         Insert 'B' at beginning, string becomes: "BABC".
#         Insert 'C' at beginning, string becomes: "CBABC".

# Input 2:
#     A = "AACECAAAA"
# Output 2:
#     2
#     Explanation 2:
#         Insert 'A' at beginning, string becomes: "AAACECAAAA".
#         Insert 'A' at beg

class Solution
    # @param a : string
    # @return an integer
    def solve(a)
        sum = 0

        for i in 0..(a.size-1)
          if a == a.reverse || a.empty?
            break
          else
            a[-1] = ''
            sum += 1
          end
        end
        sum
    end
end
