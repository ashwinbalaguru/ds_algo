# Generate all Parentheses II

# Given n pairs of parentheses, write a function to generate all combinations of well-formed parentheses of length 2*n.

# For example, given n = 3, a solution set is:

# "((()))", "(()())", "(())()", "()(())", "()()()"
# Make sure the returned list of strings are sorted.



class Solution
    # @param a : integer
    # @return an array of strings
    def generateParenthesis(a)
      return [] if  a == 0
      # Open paranthesis op
      op = 0
      # Close paranthesiss cp
      cp = 0
      generator(a, "", op, cp, [])
    end

    def generator(a, curr, op, cp, res)
      if cp == a
        res << curr
        return
      else
        if op < a
          generator(a, curr+'(', op+1, cp, res)
        end
        if op > cp
          generator(a, curr+')', op, cp+1, res)
        end
      end
      res
    end
end
