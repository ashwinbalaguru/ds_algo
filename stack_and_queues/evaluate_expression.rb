# Evaluate Expression
# Asked in:
# Yahoo
# Google
# Facebook
# Evaluate the value of an arithmetic expression in Reverse Polish Notation.

# Valid operators are +, -, *, /. Each operand may be an integer or another expression.



# Input Format

# The only argument given is character array A.
# Output Format

# Return the value of arithmetic expression formed using reverse Polish Notation.
# For Example

# Input 1:
#     A =   ["2", "1", "+", "3", "*"]
# Output 1:
#     9
# Explaination 1:
#     starting from backside:
#     *: ( )*( )
#     3: ()*(3)
#     +: ( () + () )*(3)
#     1: ( () + (1) )*(3)
#     2: ( (2) + (1) )*(3)
#     ((2)+(1))*(3) = 9

# Input 2:
#     A = ["4", "13", "5", "/", "+"]
# Output 2:
#     6
# Explaination 2:
#     +: ()+()
#     /: ()+(() / ())
#     5: ()+(() / (5))
#     1: ()+((13) / (5))
#     4: (4)+((13) / (5))
#     (4)+((13) / (5)) = 6


class Solution
    # @param a : array of strings
    # @return an integer
    def evalRPN(a)
        return a[0].to_i if a.size == 1
        x = []
        final = nil

        a.each do |val|
          if val.to_i.to_s == val
            x.push(val.to_i)
          else
            second = x.pop
            first = x.pop
            final = (first).method(val).(second)
            x.push(final)
          end
        end
        final
    end
end


# standard solution
class Solution
    # @param a : array of strings
    # @return an integer
    def evalRPN(tokens)

    stack = []

    tokens.each do |a|
        case a
        when "+"
            y = stack.pop
            x = stack.pop
            stack << x + y
        when "-"
            y = stack.pop
            x = stack.pop
            stack << x - y
        when "*"
            y = stack.pop
            x = stack.pop
            stack << x * y
        when "/"
            y = stack.pop
            x = stack.pop

            stack << (x.to_f / y).to_i
        else
            stack << a.to_i
        end
    end
    stack.pop
    end
end




