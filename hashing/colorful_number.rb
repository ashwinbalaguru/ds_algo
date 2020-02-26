# Colorful Number

# For Given Number N find if its COLORFUL number or not

# Return 0/1

# COLORFUL number:

# A number can be broken into different contiguous sub-subsequence parts.
# Suppose, a number 3245 can be broken into parts like 3 2 4 5 32 24 45 324 245.
# And this number is a COLORFUL number, since product of every digit of a contiguous subsequence is different
# Example:

# N = 23
# 2 3 23
# 2 -> 2
# 3 -> 3
# 23 -> 6
# this number is a COLORFUL number since product of every digit of a sub-sequence are different.

# Output : 1

class Solution
    # @param a : integer
    # @return an integer
    def colorful(a)
      list = a.to_s.split('').map(&:to_i)
      val = []
      n = list.size

      for i in 0..(n-1)
        prod = 1
        for j in i..(n-1)
          prod = prod * list[j]
          if val.include? prod
            return 0
          else
            val << prod
          end
        end
      end
      1
    end
end


class Solution
    # @param a : integer
    # @return an integer
    def colorful(a)
      # true - 1
      # false - 0
      list = a.to_s.split('').map(&:to_i)
      dups = list.select{|e| list.count(e)>1}
      return 0 unless dups.empty?
      return 1 if list.size == 1
      val = []
      n = list.size

      for i in 0..(n-1)
        prod = 1
        for j in i..(n-1)
          prod = prod * list[j]
          val << prod unless list[i] == list[j]
        end
      end

      i = 0
      while(i<val.size)
        return 0 if list.include? val[i]
        i+=1
      end
      return 1
    end
end
