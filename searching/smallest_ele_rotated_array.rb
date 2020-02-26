# Rotated Array

# Suppose a sorted array A is rotated at some pivot unknown to you beforehand.

# (i.e., 0 1 2 4 5 6 7 might become 4 5 6 7 0 1 2).

# Find the minimum element.

# The array will not contain duplicates.

# NOTE 1: Also think about the case when there are duplicates. Does your current solution work? How does the time complexity change?*
# PROBLEM APPROACH:

# Note: If you know the number of times the array is rotated, then this problem becomes trivial. If the number of rotation is x, then minimum element is A[x].
# Lets look at how we can calculate the number of times the array is rotated.

class Solution
    # @param a : constant array of integers
    # @return an integer
    def findMin(a)
      low = 0
      high = a.size - 1

      while (low < high)
        if a[low] <= a[high]
          return a[low]
        end
        mid = (low + high)/2
        nv = mid + 1
        pv = mid - 1

        if a[mid] <= a[nv] && a[mid] <= a[nv]
          return a[mid]
        elsif a[mid] <= a[high]
          high = mid - 1
        elsif a[mid] >= a[low]
          low = mid + 1
        end
      end
    end
end
