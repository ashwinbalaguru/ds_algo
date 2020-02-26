# Zigzag String

# The string "PAYPALISHIRING" is written in a zigzag pattern on a given number of rows like this: (you may want to display this pattern in a fixed font for better legibility)

# P.......A........H.......N
# ..A..P....L....S....I...I....G
# ....Y.........I........R
# And then read line by line: PAHNAPLSIIGYIR
# Write the code that will take a string and make this conversion given a number of rows:

# string convert(string text, int nRows);
# convert("PAYPALISHIRING", 3) should return "PAHNAPLSIIGYIR"
# **Example 2 : **
# ABCD, 2 can be written as

# A....C
# ...B....D
# and hence the answer would be ACBD.

class Solution
    # @param a : string
    # @param b : integer
    # @return a string
    def convert(a, b)

      n = b
      arr = Array.new(b) {Array.new(b)}

      dir = 'down'
      row_min = 0
      min = 0
      max = n - 1

      for i in 0..(a.length-1)
        if dir == 'down'
          arr[row_min][i] = a[i]
          row_min += 1
          if row_min > max
            row_min -= 1
            dir = 'up'
            next
          end
        end

        if dir == 'up'
          row_min -= 1
          arr[row_min][i] = a[i]
          if row_min <= min
            row_min += 1
            dir = 'down'
            next
          end
        end
      end
      arr.flatten.compact.join
    end
end
