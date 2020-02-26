# Generate all Parentheses
# Asked in:
# Amazon


# Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

# The brackets must close in the correct order, "()" and "()[]{}" are all valid but "(]" and "([)]" are not.

# Return 0 / 1 ( 0 for false, 1 for true ) for this problem


class Solution
    # @param a : string
    # @return an integer

    def isValid(a)
      return 0 unless a.size % 2 == 0
      bal = []

      a.chars.each do |ch|
        # p bal
        if (ch == '{') || (ch == '(') || (ch =='[')
          bal.unshift(ch)
        end

        if bal.empty?
          return 0
        end

        if ch == '}'
          if bal[0] == '{'
            bal.shift
          else
            return 0
          end
        end

        if ch == ')'
          if bal[0] == '('
            bal.shift
          else
            return 0
          end
        end

        if ch == ']'
          if bal[0] == '['
            bal.shift
          else
            return 0
          end
        end
      end
    #   p bal
      bal.empty? ? 1 : 0
    end
end
