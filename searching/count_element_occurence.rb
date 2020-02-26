# Binary Search extension


# Count Element Occurence
# Given a sorted array of integers, find the number of occurrences of a given target value.
# Your algorithm’s runtime complexity must be in the order of O(log n).
# If the target is not found in the array, return 0

# **Example : **
# Given [5, 7, 7, 8, 8, 10] and target value 8,
# return 2.

class Solution
    # @param a : constant array of integers
    # @param b : integer
    # @return an integer
    def findCount(a, b)
      first = find_first_last(a, b, true)
      last = find_first_last(a, b, false)

      last - first + 1
    end

    def find_first_last(a, b, first_search)
      low = 0
      high = a.size - 1

      while (low <= high) do
        mid = (low + high)/2

        if a[mid] == b
          result = mid
          if first_search
            high = mid -1
          else
            low = mid + 1
          end
        elsif a[mid] > b
          high = mid - 1
        else
          low = mid + 1
        end
      end
      result
    end
end
