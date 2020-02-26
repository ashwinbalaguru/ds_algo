# PRETTYPRINT
# Print concentric rectangular pattern in a 2d matrix.
# Let us show you some examples to clarify what we mean.

# Example 1:

# Input: A = 4.
# Output:

# 4 4 4 4 4 4 4
# 4 3 3 3 3 3 4
# 4 3 2 2 2 3 4
# 4 3 2 1 2 3 4
# 4 3 2 2 2 3 4
# 4 3 3 3 3 3 4
# 4 4 4 4 4 4 4
# Example 2:

# Input: A = 3.
# Output:

# 3 3 3 3 3
# 3 2 2 2 3
# 3 2 1 2 3
# 3 2 2 2 3
# 3 3 3 3 3
# The outermost rectangle is formed by A, then the next outermost is formed by A-1 and so on.

# You will be given A as an argument to the function you need to implement, and you need to return a 2D array.

class Solution
    # @param a : integer
    # @return an array of array of integers
    def prettyPrint(a)
      len = a * 2 -1
      arr = Array.new(len){Array.new(len)}

      dir = 'right'
      counter = a
      t = 0; d = (len-1); l = 0; r = (len-1)

      while (counter >= 1)
        if dir == 'right'
          for i in l..r do
            arr[t][i] = counter
          end
        t += 1
        dir = 'down'
        end

        if dir == 'down'
          for i in t..d do
            arr[i][r] = counter
          end
          r -= 1
          dir = 'left'
        end

        if dir == 'left'
          for i in r.downto(l) do
            arr[d][i] = counter
          end
          d -= 1
          dir = 'top'
        end

        if dir == 'top'
          for i in d.downto(t) do
            arr[i][l] = counter
          end
            l += 1
            dir = 'right'
        end
        counter -= 1
      end
      arr
    end
end