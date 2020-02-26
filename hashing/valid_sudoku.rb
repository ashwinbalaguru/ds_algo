# Valid Sudoku

# Determine if a Sudoku is valid, according to: http://sudoku.com.au/TheRules.aspx

# The Sudoku board could be partially filled, where empty cells are filled with the character ‘.’.



# The input corresponding to the above configuration :

# ["53..7....", "6..195...", ".98....6.", "8...6...3", "4..8.3..1", "7...2...6", ".6....28.", "...419..5", "....8..79"]
# A partially filled sudoku which is valid.

#  Note:
# A valid Sudoku board (partially filled) is not necessarily solvable. Only the filled cells need to be validated.
# Return 0 / 1 ( 0 for false, 1 for true ) for this problem


class Solution
    # @param a : constant array of strings
    # @return an integer
    def isValidSudoku(a)
      valid_hash = {}

      for i in 0..8
        for j in 0..8
          next if a[i][j] == '.'
          if valid_hash.include? [a[i][j], i, 'r']
            return 0
          end

          if valid_hash.include? [a[i][j], j, 'c']
            return 0
          end

          if valid_hash.include? [a[i][j], i/3, j/3]
            return 0
          end

          valid_hash[[a[i][j], i, 'r']] = 1
          valid_hash[[a[i][j], j, 'c']] = 1
          valid_hash[[a[i][j], i/3, j/3]] = 1
        end
      end
      return 1
    end
end
