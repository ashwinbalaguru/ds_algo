# Min XOR value
# Given an integer array A of N integers, find the pair of integers in the array which have minimum XOR value. Report the minimum XOR value.

# Input Format:

#     First and only argument of input contains an integer array A
# Output Format:

#     return a single integer denoting minimum xor value
# Constraints:

# 2 <= N <= 100 000
# 0 <= A[i] <= 1 000 000 000
# For Examples :

# Example Input 1:
#     A = [0, 2, 5, 7]
# Example Output 1:
#     2
# Explanation:
#     0 xor 2 = 2
# Example Input 2:
#     A = [0, 4, 7, 9]
# Example Output 2:
#     3

class Solution
    # @param a : array of integers
    # @return an integer
    def findMinXor(a)
        a = a.sort
        min = 2**32

        for i in 0..(a.size-1)
          xor = a[i] ^ a[i+1] if a[i+1]
          if xor < min
            min = xor
          end
        end
        min
    end
end
