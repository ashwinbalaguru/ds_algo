# 3 Sum Zero

# Given an array S of n integers, are there elements a, b, c in S such that a + b + c = 0?
# Find all unique triplets in the array which gives the sum of zero.

# Note:

#  Elements in a triplet (a,b,c) must be in non-descending order. (ie, a ≤ b ≤ c)
# The solution set must not contain duplicate triplets. For example, given array S = {-1 0 1 2 -1 -4}, A solution set is:
# (-1, 0, 1)
# (-1, -1, 2)

class Solution
    # @param a : array of integers
    # @return an array of array of integers


    # Complexity O(n**3)
    def threeSum(a)
          # return nil if a.size < 3

          final = []
          a = a.sort
          for i in 0..(a.size-1)
            for j in (i+1)..(a.size-1)
              for k in (j+1)..(a.size-1)
                sum = a[i] + a[j] + a[k]
                final << [a[i], a[j], a[k]] if sum == 0
              end
            end
          end
          final.uniq
    end
end


class Solution
    # @param a : array of integers
    # @return an array of array of integers
    def threeSum(a)
        #   return '' if a.size < 3
          a = a.sort

          final = []

          for i in 0..(a.size-3)
            f = a[i]
            j = i + 1
            k = a.size-1

            while(j<k)
              sum = a[i] + a[j] + a[k]
              if sum == 0
                final << [a[i], a[j], a[k]]
              end

              if sum < 0
                j += 1
              else
                k -= 1
              end
            end
          end
          final.uniq
    end
end