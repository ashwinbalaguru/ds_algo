# Rotated Sorted Array Search
# Given an array of integers A of size N and an integer B.

# array A is rotated at some pivot unknown to you beforehand.

# (i.e., 0 1 2 4 5 6 7 might become 4 5 6 7 0 1 2 ).

# You are given a target value B to search. If found in the array, return its index, otherwise return -1.

# You may assume no duplicate exists in the array.

# NOTE:- Array A was sorted in non-decreasing order before rotation.

# NOTE : Think about the case when there are duplicates. Does your current solution work? How does the time complexity change?*
# Input Format

# The first argument given is the integer array A.
# The second argument given is the integer B.
# Output Format

# Return index of B in array A, otherwise return -1
# Constraints

# 1 <= N <= 1000000
# 1 <= A[i] <= 10^9
# all elements in A are disitinct.
# For Example

# Input 1:
#     A = [4, 5, 6, 7, 0, 1, 2, 3]
#     B = 4
# Output 1:
#     0
# Explanation 1:
#  Target 4 is found at index 0 in A.


# Input 2:
#     A = [5, 17, 100, 3]
#     B = 6
# Output 2:
#     -1

class Solution
    # @param a : constant array of integers
    # @param b : integer
    # @return an integer
    def search(a, b)
      low = 0
      high = a.size - 1

      while (low <= high)
        mid = (low + high) / 2

        if a[mid] == b
          return mid
        elsif a[mid] >= a[high]
          if a[mid] > b && b >= a[high]
            high = mid - 1
          else
            low = mid + 1
          end
        else
          if a[mid] <= b
            low = mid + 1
          else
            high = mid - 1
          end
        end
      end
      -1
    end
end
