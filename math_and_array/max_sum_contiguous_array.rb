# Max Sum Contiguous Subarray

# Find the contiguous subarray within an array, A of length N which has the largest sum.

# Input Format:

# The first and the only argument contains an integer array, A.
# Output Format:

# Return an integer representing the maximum possible sum of the contiguous subarray.
# Constraints:

# 1 <= N <= 1e6
# -1000 <= A[i] <= 1000
# For example:

# Input 1:
#     A = [1, 2, 3, 4, -10]

# Output 1:
#     10

# Explanation 1:
#     The subarray [1, 2, 3, 4] has the maximum possible sum of 10.

# Input 2:
#     A = [-2, 1, -3, 4, -1, 2, 1, -5, 4]

# Output 2:
#     6

# Explanation 2:
#     The subarray [4,-1,2,1] has the maximum possible sum of 6.

class Solution
  # @param a : constant array of integers
  # @return an integer
  def maxSubArray(a)
      max = a[0]; sum = 0
      a.each do |num|
        sum = [num, sum+num].max
        max = [max, sum].max
      end
      max
  end


  # def maxSubArray(a)
  #   # brute force
  #   max = a[0]
  #   for i in 0..(a.size-1)
  #     sum = 0
  #     for j in i..(a.size-1)
  #       sum += a[j]
  #       max = sum if sum > max
  #     end
  #   end
  #   max
  # end


  # def maxsubArray(a)
  #   # only +ve response because sum will be 0 for negative response
  #   max = 0; sum = 0
  #   a.each do |num|
  #     sum += num
  #     sum = 0 if sum < 0
  #     max = sum if sum > max
  #   end
  #   max
  # end
end

