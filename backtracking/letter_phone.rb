# Letter Phone

# Given a digit string, return all possible letter combinations that the number could represent.

# A mapping of digit to letters (just like on the telephone buttons) is given below.



# The digit 0 maps to 0 itself.
# The digit 1 maps to 1 itself.

# Input: Digit string "23"
# Output: ["ad", "ae", "af", "bd", "be", "bf", "cd", "ce", "cf"].
# Make sure the returned strings are lexicographically sorted.

class Solution
    # @param a : string
    # @return an array of strings
    def letterCombinations(a)
        @list = ["0", "1", "abc", "def", "ghi", "jkl", "mno", "pqrs", "tuv", "wxyz"]
        @result = []
        return @result if a.length == 0
        combination(a, 0, "")
        @result
    end


    def combination(a, idx, current)
        if idx == a.size
          @result << current
          return
        end

        letters = @list[a[idx].to_i]

        for i in 0..(letters.length-1)
          combination(a, idx+1, current+letters[i])
        end
    end
end
