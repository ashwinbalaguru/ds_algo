# https://www.hackerrank.com/challenges/divisible-sum-pairs/problem

#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'divisibleSumPairs' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER n
#  2. INTEGER k
#  3. INTEGER_ARRAY ar
#

def divisibleSumPairs(n, k, ar)
    # Write your code here
    count = 0
    for i in 0..n-1
        puts "#{i} -> #{ar[i]}"
        for j in (i+1)..n-1
            puts "#{j} -> #{ar[j]}"
            count += 1 if (ar[i] + ar[j]) % k == 0
        end
    end
    count
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

first_multiple_input = gets.rstrip.split

n = first_multiple_input[0].to_i

k = first_multiple_input[1].to_i

ar = gets.rstrip.split.map(&:to_i)

result = divisibleSumPairs n, k, ar

fptr.write result
fptr.write "\n"

fptr.close()
