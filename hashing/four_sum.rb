# 4 Sum

# Given an array S of n integers, are there elements a, b, c, and d in S such that a + b + c + d = target? Find all unique quadruplets in the array which gives the sum of target.

#  Note:
# Elements in a quadruplet (a,b,c,d) must be in non-descending order. (ie, a ≤ b ≤ c ≤ d)
# The solution set must not contain duplicate quadruplets.
# Example :
# Given array S = {1 0 -1 0 -2 2}, and target = 0
# A solution set is:

#     (-2, -1, 1, 2)
#     (-2,  0, 0, 2)
#     (-1,  0, 0, 1)
# Also make sure that the solution set is lexicographically sorted.
# Solution[i] < Solution[j] iff Solution[i][0] < Solution[j][0] OR (Solution[i][0] == Solution[j][0] AND ... Solution[i][k] < Solution[j][k])


# Brute Force, Time Complexity O(n**4)
class Solution
    # @param a : array of integers
    # @param b : integer
    # @return an array of array of integers
    def fourSum(a, b)
      n = a.size-1
      val = []

      for i in 0..n
        sum = 0
        for j in 0..n
          next if i==j
          for k in 0..n
            next if i == k || j == k
            for l in 0..n
              next if i == l || j == l || k == l
              sum = a[i] + a[j] + a[k] + a[l]
              push = [a[i], a[j], a[k], a[l]].sort
              val << push if sum == b && !(val.include? push)
            end
          end
        end
      end
      val
    end
end
