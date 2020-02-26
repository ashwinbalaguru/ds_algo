# Diffk II

# Given an array A of integers and another non negative integer k, find if there exists 2 indices i and j such that A[i] - A[j] = k, i != j.

# Example :

# Input :

# A : [1 5 3]
# k : 2
# Output :

# 1
# as 3 - 1 = 2

# Return 0 / 1 for this problem.

class Solution
    # @param a : constant array of integers
    # @param b : integer
    # @return an integer
    def diffPossible(a, b)
      return 0 if a.size == 1

      n = a.length
      hash = {}

      for i in 0..n-1
        # Since diff can be from first or last val in a single loop
        # Hence taking 2 cases +ve and -ve

        target1 = a[i] - b
        target2 = a[i] + b

        if (hash.include? target1) || (hash.include? target2)
          return 1
        else
          hash[a[i]] = i
        end
      end
      0
    end
end



# Brute Force
class Solution
  def diffPossible(a, b)
    for i in (a.size-1).downto(0)
      for j in (a.size-1).downto(i)
        diff = a[i] - a[j]
        p diff
        return 1 if diff.abs == b && i != j
      end
    end
    0
  end
end
