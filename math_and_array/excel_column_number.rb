# Excel Column Number
# Asked in:
# Amazon
# Given a column title as appears in an Excel sheet, return its corresponding column number.

# Example:

#     A -> 1

#     B -> 2

#     C -> 3

#     ...

#     Z -> 26

#     AA -> 27

#     AB -> 28

class Solution
    # @param a : string
    # @return an integer
    def titleToNumber(a)
        list = ('A'..'Z').to_a
        result = 0
        for i in 0..a.size-1
          result *= 26
          result += (list.find_index(a[i]) + 1)
        end
        result
    end
end