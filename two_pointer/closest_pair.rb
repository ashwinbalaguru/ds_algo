# Find the closest pair from two sorted arrays
# Given two sorted arrays of distinct integers, A and B, and an integer C,
# find and return the pair whose sum is closest to C and the pair has one element from each array.

# More formally, find A[i] and B[j] such that abs((A[i] + B[j]) - C) has minimum value.

# If there are multiple solutions find the one with minimum i and even if there are multiple values of j
# for the same i then return the one with minimum j.

# Note: Return an array with two elements {A[i], B[j]}.



# Input Format

# The first argument given is the integer array A.
# The second argument given is the integer array B.
# The third argument given is integer C.
# Output Format

# Return the pair which has sum closest to C.
# Constraints

# 1 <= length of both the arrays <= 100000
# 1 <= A[i], B[i] <= 10^9
# 1 <= C <= 10^9
# For Example

# Input 1:
#     A = [1, 2, 3, 4, 5]
#     B = [2, 4, 6, 8]
#     C = 9
# Output 1:
#     [1, 8]

# Input 2:
#     A = [5, 10, 20]
#     B = [1, 2, 30]
#     C = 13
# Output 2:
#     [10, 2]


class Solution
    # @param a : array of integers
    # @param b : array of integers
    # @param c : integer
    # @return an array of integers

    # Brute force, complexity O(n**2 )
    def solve(a, b, c)
      diff = 2**32
      i = 0
      j = 0
      n = a.size-1
      m = b.size-1

      for i in 0..n
        for j in 0..m
          curr_diff = (a[i] + b[j] - c).abs
          if curr_diff < diff
            diff = curr_diff
            final = [a[i], b[j]]
            break if curr_diff == 0
          end
        end
      end
      final
    end




    def solve(a, b, c)
      i = 0
      j = b.size-1
      n = a.size-1
      diff = 2**32

      while (i <= n && j >= 0)
        curr_diff = (a[i] + b[j] - c).abs
        if curr_diff < diff
          x = i
          y = j
          diff = curr_diff
        end

        y = j if curr_diff == diff && x == i
        if (a[i]+b[j]) > c
          j -= 1
        else
          i += 1
        end
      end
      [a[x], b[y]]
    end
end
