# Spiral Order Matrix II
# Asked in:
# Microsoft
# JP Morgan
# Amazon
# Given an integer A, generate a square matrix filled with elements from 1 to A2 in spiral order.



# Input Format:

# The first and the only argument contains an integer, A.
# Output Format:

# Return a 2-d matrix of size A x A satisfying the spiral order.
# Constraints:

# 1 <= A <= 1000
# Examples:

# Input 1:
#     A = 3

# Output 1:
#     [   [ 1, 2, 3 ],
#         [ 8, 9, 4 ],
#         [ 7, 6, 5 ]   ]

# Input 2:
#     4

# Output 2:
#     [   [1, 2, 3, 4],
#         [12, 13, 14, 5],
#         [11, 16, 15, 6],
#         [10, 9, 8, 7]   ]

class Solution
    # @param a : integer
    # @return an array of array of integers
    def generateMatrix(a)
        arr = Array.new(a){Array.new(a)}

        dir = 'right'
        counter = 1
        t = 0; d = (a-1); l = 0; r = (a-1)

        while(counter <= (a*a)) do
          if dir == 'right'
            for i in l..r do
              arr[t][i] = counter
              counter += 1
            end
              t += 1
              dir = 'down'
          end

          if dir == 'down'
            for i in t..d do
              arr[i][r] = counter
              counter += 1
            end
            r -= 1
            dir = 'left'
          end

          if dir == 'left'
            for i in r.downto(l) do
              arr[d][i] = counter
              counter += 1
            end
            d -= 1
            dir = 'top'
          end

          if dir == 'top'
            for i in d.downto(t) do
              arr[i][l] = counter
              counter += 1
            end
              l += 1
              dir = 'right'
          end
        end
        arr
    end
end

