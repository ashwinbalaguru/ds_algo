# Power Set
# Power Set Power set P(S) of a set S is the set of all subsets of S. For example S = {a, b, c} then P(s) = {{}, {a}, {b}, {c}, {a,b}, {a, c}, {b, c}, {a, b, c}}.

# If S has n elements in it then P(s) will have 2^n elements

# Recommended: Please solve it on “PRACTICE” first, before moving on to the solution.

# Algorithm:



# Input: Set[], set_size
# 1. Get the size of power set
#     powet_set_size = pow(2, set_size)
# 2  Loop for counter from 0 to pow_set_size
#      (a) Loop for i = 0 to set_size
#           (i) If ith bit in counter is set
#                Print ith element from set for this subset
#      (b) Print separator for subsets i.e., newline
# Example:

# Set  = [a,b,c]
# power_set_size = pow(2, 3) = 8
# Run for binary counter = 000 to 111

# Value of Counter            Subset
#     000                    -> Empty set
#     001                    -> a
#     010                    -> b
#     011                    -> ab
#     100                    -> c
#     101                    -> ac
#     110                    -> bc
#     111                    -> abc

set = ['a', 'b', 'c']

def subset(set)
  size = set.size
  pow_set = 2**size

  x = []

  for i in 0..pow_set do
    y = []
    for j in 0..size do
      # p "i=>#{i}, j=>#{j}"
      y << set[j] if ((i & (1 << j)) != 0)
    end
    x << y
  end
  x
end
