# Search for a Range
# Asked in:
# Google
# Microsoft
# Given a sorted array of integers A(0 based index) of size N, find the starting and ending position of a given integar B in array A.

# Your algorithm’s runtime complexity must be in the order of O(log n).

# Return an array of size 2, such that first element = starting position of B in A and second element = ending position of B in A, if B is not found in A return [-1, -1].



# Input Format

# The first argument given is the integer array A.
# The second argument given is the integer B.
# Output Format

#  Return an array of size 2, such that first element = starting position of B in A and second element = ending position of B in A, if B is not found in A return [-1, -1].
# Constraints

# 1 <= N <= 10^6
# 1 <= A[i], B <= 10^9
# For Example

# Input 1:
#     A = [5, 7, 7, 8, 8, 10]
#     B = 8
# Output 1:
#     [3, 4]
# Explanation 1:
#     First occurence of 8 in A is at index 3
#     Second occurence of 8 in A is at index 4
#     ans = [3, 4]

# Input 2:
#     A = [5, 17, 100, 111]
#     B = 3
# Output 2:
#     [-1, -1]

class Solution
    # @param a : constant array of integers
    # @param b : integer
    # @return an array of integers
    def searchRange(a, b)
      first = search(a, b, true)
      second = search(a, b, false)

      if first.nil?
        [-1, -1]
      elsif first.zero? && second.zero?
        [0, 0]
      else
        [first, second]
      end
    end

    def search(a, b, first_search)
      low = 0
      high = a.size - 1

      while (low <= high)
        mid = (low+high)/2
        if a[mid] == b
          # return mid
          result = mid
          if first_search
            high = mid - 1
          else
            low = mid + 1
          end
        elsif a[mid] < b
          low = mid + 1
        else
          high = mid - 1
        end
      end
      result
    end
end
