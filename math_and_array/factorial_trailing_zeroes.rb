# Given an integer n, return the number of trailing zeroes in n!.

# Follow up: Could you write a solution that works in logarithmic time complexity?



# Example 1:

# Input: n = 3
# Output: 0
# Explanation: 3! = 6, no trailing zero.
# Example 2:

# Input: n = 5
# Output: 1
# Explanation: 5! = 120, one trailing zero.
# Example 3:

# Input: n = 0
# Output: 0


# Constraints:

# 1 <= n <= 104




# Brute Force

# @param {Integer} n
# @return {Integer}
def trailing_zeroes(n)
  val = factorial(n)
  count = 0
  while val > 0
    if val % 10 == 0
      count += 1
      val = val / 10
    else
      break
    end
  end
  count
end

def factorial(num)
  return 1 unless num > 0
  num * factorial(num - 1)
end

# **************************** #

def trailing_zeroes(n)
  val = 0
  count = 1
  x = 1
  while x != 0
    x = n / (5**count)
    val += x
    count += 1
  end
  val
end

# Reasoning:  https://www.youtube.com/watch?v=wkvVdggCSeo&ab_channel=ScalerAcademy
















