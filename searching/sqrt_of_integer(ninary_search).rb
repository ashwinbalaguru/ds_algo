# Square Root of Integer
# Given an integar A.

# Compute and return the square root of A.

# If A is not a perfect square, return floor(sqrt(A)).

# DO NOT USE SQRT FUNCTION FROM STANDARD LIBRARY



# Input Format

# The first and only argument given is the integer A.
# Output Format

# Return floor(sqrt(A))
# Constraints

# 1 <= A <= 10^9
# For Example

# Input 1:
#     A = 11
# Output 1:
#     3

# Input 2:
#     A = 9
# Output 2:
#     3

class Solution
    # @param a : integer
    # @return an integer
    def sqrt(a)
      return 0 if a == 0
      low = 0
      high = a - 1

      while (low <= high)
        mid = (low+high)/2
        if (mid**2) <= a && ((mid+1)**2) > a
          return mid
        elsif (mid**2) > a
          high = mid - 1
        elsif (mid**2) < a
          low = mid + 1
        end
      end
    end
end
