class Solution
    # Single Element in a Sorted Array
    # Given a sorted array of integers A where every element appears twice except for one element which appears once, find and return this single element that appears only once.
    # Input Format
    # The only argument given is the integer array A.
    # Output Format
    # Return the single element that appears only once.
    # Constraints
    # 1 <= length of the array <= 100000
    # 1 <= A[i] <= 10^9
    # For Example
    # Input 1:
    #     A = [1, 1, 2, 2, 3]
    # Output 1:
    #     3

    # Input 2:
    #     A = [5, 11, 11, 100, 100]
    # Output 2:
    #     5
    # @param a : array of integers
    # @return an integer
    def solve(a)
      l = 0
      h = a.size - 1

      while (l <= h)
        m = (l + h)/2
        return a[m] if (a[m] != a[m+1]) && (a[m] != a[m-1])

        if a[m] == a[m + 1]
          if m.odd?
            h = m
          else
            l = m + 2
          end
        elsif a[m] == a[m - 1]
          if m.odd?
            l = m + 1
          else
            h = m - 1
           end
        end
      end
    end
end
