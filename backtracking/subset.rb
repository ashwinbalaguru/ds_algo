# Given a set of distinct integers, S, return all possible subsets.

#  Note:
# Elements in a subset must be in non-descending order.
# The solution set must not contain duplicate subsets.
# Also, the subsets should be sorted in ascending ( lexicographic ) order.
# The list is not necessarily sorted.
# Example :

# If S = [1,2,3], a solution is:

# [
#   [],
#   [1],
#   [1, 2],
#   [1, 2, 3],
#   [1, 3],
#   [2],
#   [2, 3],
#   [3],
# ]


class Solution
    # @param a : array of integers
    # @return an array of array of integers
      def subset_list(a, idx, res)
        a = a.sort
        n = a.size-1
        @list << res.dup
        for i in (idx..n)
          res << a[i]
          subset_list(a, i+1, res)
          res.pop
        end
      end

      def subsets(a)
        n = a.size
        @list = []
        res = []
        idx = 0
        subset_list(a, idx, res)
        @list
      end
end
