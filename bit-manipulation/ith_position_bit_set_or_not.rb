# Check if the ith bit is set in the binary form of the given number.

def bit_set(n, i)
  # i is postion of the bit
  # n is the actual number

  temp = 1 << (i-1)
  # n & temp is non zero then the value at ith position is 1
  (n & temp) != 0 ?  'SET' : 'NOT SET'

   # (n & (1 << (i-1))) != 0 ?  'SET' : 'NOT SET'
end