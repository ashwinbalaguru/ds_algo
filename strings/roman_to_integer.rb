# Roman To Integer
# Asked in:
# Amazon
# Facebook
# Microsoft
# Twitter
# Given a string A representing a roman numeral.
# Convert A into integer.

# A is guaranteed to be within the range from 1 to 3999.

# NOTE: Read more
# details about roman numerals at Roman Numeric System



# Input Format

# The only argument given is string A.
# Output Format

# Return an integer which is the integer verison of roman numeral string.
# For Example

# Input 1:
#     A = "XIV"
# Output 1:
#     14

# Input 2:
#     A = "XX"
# Output 2:
#     20

class Solution
    # @param a : string
    # @return an integer
    def romanToInt(a)
        hash = {"I"=> 1, "V"=> 5, "X"=> 10, "L"=> 50, "C"=> 100, "D"=> 500, "M"=> 1000}
        sum = 0
        for i in 0..(a.size-1)
          next_val = hash[a[i+1]] || 0

          if hash[a[i]] >= next_val
            sum += hash[a[i]]
          else
            sum -= hash[a[i]]
          end
        end
        sum
    end
end
