# You are given two numbers A and B. Write a program to count number of bits needed to be flipped to convert A to B.

# Input:
# The first line of input contains an integer T denoting the number of test cases. T testcases follow. The first line of each test case is A and B separated by a space.

# Output:
# For each testcase, in a new line, print the number of bits needed to be flipped.

# Constraints:
# 1 ≤ T ≤ 100
# 1 ≤ A, B ≤ 103

# Example:
# Input:
# 1
# 10 20
# Output:
# 4

# Explanation:
# Testcase1:
# A  = 01010
# B  = 10100
# Number of bits need to flipped = 4


def bit_diff(a, b)
  count = 0
  for i in 0..31
    if (a & (1<<i)) != (b & (1<<i))
      count += 1
    end
  end
  count
end