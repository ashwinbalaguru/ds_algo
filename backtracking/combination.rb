# Combinations

# Given two integers n and k, return all possible combinations of k numbers out of 1 2 3 ... n.

# Make sure the combinations are sorted.

# To elaborate,

# Within every entry, elements should be sorted. [1, 4] is a valid entry while [4, 1] is not.
# Entries should be sorted within themselves.
# Example :
# If n = 4 and k = 2, a solution is:

# [
#   [1,2],
#   [1,3],
#   [1,4],
#   [2,3],
#   [2,4],
#   [3,4],
# ]

class Solution
    # @param a : integer
    # @param b : integer
    # @return an array of array of integers
    def combine(a, b)
      @result = []
      list(a, b, 1, [])
      @result
    end

    def list(a, b, idx, res)
      return if res.size > b
      @result << res.dup if res.size == b
      for i in idx..a
        res << i
        list(a, b, i+1, res)
        res.pop
      end
    end
end
