# Permutations

# Given a collection of numbers, return all possible permutations.

# Example:

# [1,2,3] will have the following permutations:

# [1,2,3]
# [1,3,2]
# [2,1,3]
# [2,3,1]
# [3,1,2]
# [3,2,1]
#  NOTE
# No two entries in the permutation sequence should be the same.
# For the purpose of this problem, assume that all the numbers in the collection are unique.
#  Warning : DO NOT USE LIBRARY FUNCTION FOR GENERATING PERMUTATIONS.
# Example : next_permutations in C++ / itertools.permutations in python.
# If you do, we will disqualify your submission retroactively and give you penalty points.


class Solution
    # @param a : array of integers
    # @return an array of array of integers
      def permute(a)
        @result = []
        generate(a, 0, a.size-1)
        @result
      end

      def generate(a, s, l)
        if s == l
          @result << a.dup
          return
        end
        for i in s..l
          a[i], a[s] = a[s], a[i]
          generate(a, s+1, l)
          a[i], a[s] = a[s], a[i]
        end
      end
end
