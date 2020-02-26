# Largest Continuous Sequence Zero Sum

# Find the largest continuous sequence in a array which sums to zero.

# Example:


# Input:  {1 ,2 ,-2 ,4 ,-4}
# Output: {2 ,-2 ,4 ,-4}

#  NOTE : If there are multiple correct answers, return the sequence which occurs first in the array.

# Brute Force
class Solution
    # @param a : array of integers
    # @return an array of integers
    def lszero(a)
      n = a.size
      seq = []

      for i in 0..(n-1)
        sum = 0
        for j in i..(n-1)
          sum += a[j]
          if sum == 0 && seq.size < a[i..j].size
              seq = a[i..j]
          end
          # p a[i..j] if sum == 0
        end
      end
      seq
    end
end


# Logic: https://www.geeksforgeeks.org/find-the-largest-subarray-with-0-sum/
class Solution
    # @param a : array of integers
    # @return an array of integers
    def lszero(a)
      n = a.size
      hash = {}
      sum = 0
      seq = []

      for i in 0..(n-1)
        sum += a[i]

        if sum == 0
          seq = a[0..(i)]
        end

        if hash.include? sum
          j = hash[sum]
          seq = a[(j)..i] if seq.size < a[(j)..i].size
        else
          hash[sum] = (i+1)
        end
      end
      # p hash
      seq
    end
end
