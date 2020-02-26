# We define f(X, Y) as number of different corresponding bits in binary representation of X and Y. For example, f(2, 7) = 2, since binary representation of 2 and 7 are 010 and 111, respectively. The first and the third bit differ, so f(2, 7) = 2.

# You are given an array of N positive integers, A1, A2 ,…, AN. Find sum of f(Ai, Aj) for all pairs (i, j) such that 1 ≤ i, j ≤ N. Return the answer modulo 109+7.

# For example,

# A=[1, 3, 5]

# We return

# f(1, 1) + f(1, 3) + f(1, 5) +
# f(3, 1) + f(3, 3) + f(3, 5) +
# f(5, 1) + f(5, 3) + f(5, 5) =

# 0 + 1 + 1 +
# 1 + 0 + 2 +
# 1 + 2 + 0 = 8


class Solution
    # @param a : array of integers
    # @return an integer
    def cntBits(a)
        # count = 0
        # for i in 0..(a.size-1)
        #   for j in 0..(a.size-1)
        #     xor = a[i] ^ a[j]

        #     val = 0
        #     while(xor!=0)
        #       xor = xor&(xor-1)
        #       val += 1
        #     end
        #     count += val
        #   end
        # end
        # count

        count = 0
        n = a.size
        for i in 0..31
          set_bit = 0
          for j in 0..n-1
            # find all the set bits in 32 bit number, if set increment the set bit value
            set_bit += 1 if (a[j] & (1 << i)) > 0
          end

          # set_bit -> no of 1's, (n-set_bit) -> no of 0's
          count += set_bit*(n-set_bit)*2
        end
        count % (10**9+7)


    end
end
