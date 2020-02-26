# Subsets II

# Given a collection of integers that might contain duplicates, S, return all possible subsets.

#  Note:
# Elements in a subset must be in non-descending order.
# The solution set must not contain duplicate subsets.
# The subsets must be sorted lexicographically.
# Example :
# If S = [1,2,2], the solution is:

# [
# [],
# [1],
# [1,2],
# [1,2,2],
# [2],
# [2, 2]
# ]



class Solution
    # @param a : array of integers
    # @return an array of array of integers
    def subset(a, idx, res)
      return if @result.include? res
      @result << res.dup

      for i in (idx..a.size-1)
        res << a[i]
        subset(a, i+1, res)
        res.pop
      end
    end


    def subsetsWithDup(a)
      a = a.sort
      @result = []
      idx = 0
      res = []
      subset(a, idx, res)
      @result
    end
end
