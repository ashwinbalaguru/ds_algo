# Intersection Of Sorted Arrays

# Find the intersection of two sorted arrays.
# OR in other words,
# Given 2 sorted arrays, find all the elements which occur in both the arrays.

# Example :

# Input :
#     A : [1 2 3 3 4 5 6]
#     B : [3 3 5]

# Output : [3 3 5]

# Input :
#     A : [1 2 3 3 4 5 6]
#     B : [3 5]

# Output : [3 5]

class Solution
    # @param a : constant array of integers
    # @param b : constant array of integers
    # @return an array of integers
    def intersect(a, b)
        final = []
        i = 0; j= 0
        while(i < (a.size) && j < (b.size))
          if a[i] < b[j]
            i += 1
          elsif a[i] > b[j]
            j += 1
          else
            final << a[i]
            i += 1
            j += 1
          end
        end
        final
    end
end
