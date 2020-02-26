# 2 Sum

# Given an array of integers, find two numbers such that they add up to a specific target number.

# The function twoSum should return indices of the two numbers such that they add up to the target, where index1 < index2. Please note that your returned answers (both index1 and index2 ) are not zero-based.
# Put both these numbers in order in an array and return the array from your function ( Looking at the function signature will make things clearer ). Note that, if no pair exists, return empty list.

# If multiple solutions exist, output the one where index2 is minimum. If there are multiple solutions with the minimum index2, choose the one with minimum index1 out of them.

# Input: [2, 7, 11, 15], target=9
# Output: index1 = 1, index2 = 2

# brute force O(n**2) Complexity
class Solution
    # @param a : constant array of integers
    # @param b : integer
    # @return an array of integers
    def twoSum(a, b)
        sum = 0
        val = []

        for i in 0..(a.size-1)
          sum = 0
          for j in i..(a.size-1)
            next if i == j
            sum = a[i] + a[j]
            if sum == b
              if val.empty? || (j+1) < val[1]
                val = [i+1, j+1]
              end
            end
          end
        end
        val
    end
end



# Hashing, O(n) time complexity
class Solution
    # @param a : constant array of integers
    # @param b : integer
    # @return an array of integers
    def twoSum(a, b)
      hash = {}
      val = []
      for i in 0..(a.size)
        target = b - a[i]

        idx = hash[target]
        if idx
          val = [idx+1, i+1]
          return val
        elsif hash[a[i]].nil?
          hash[a[i]] = i
        end
      end
      val
    end
end
