# Combination Sum

# Given a set of candidate numbers (C) and a target number (T), find all unique combinations in C where the candidate numbers sums to T.

# The same repeated number may be chosen from C unlimited number of times.

#  Note:
# All numbers (including target) will be positive integers.
# Elements in a combination (a1, a2, … , ak) must be in non-descending order. (ie, a1 ≤ a2 ≤ … ≤ ak).
# The combinations themselves must be sorted in ascending order.
# CombinationA > CombinationB iff (a1 > b1) OR (a1 = b1 AND a2 > b2) OR … (a1 = b1 AND a2 = b2 AND … ai = bi AND ai+1 > bi+1)
# The solution set must not contain duplicate combinations.
# Example,
# Given candidate set 2,3,6,7 and target 7,
# A solution set is:

# [2, 2, 3]
# [7]

class Solution
    # @param a : array of integers
    # @param b : integer
    # @return an array of array of integers
    def list(a, b, idx, res)
    #   return if b < 0
      if b == 0
        return if @result.include? res
        @result << res.dup
        return
      end

      for i in idx..(a.size-1)
        if b - a[i] >= 0
          res << a[i]
          list(a, b-a[i], i, res)
          res.pop
        end
      end
    end


    def combinationSum(a, b)
      a = a.sort
      @result = []
      list(a, b, 0, [])
      @result
    end
end
