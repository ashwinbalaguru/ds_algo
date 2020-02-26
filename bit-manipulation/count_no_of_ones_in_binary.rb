# Count the number of ones in the binary representation of the given number.

def count(x)
  b = []

  while(x/2 != 0)
    x = x/2
    b << x%2
  end
  # actual binary value
  # b.reverse

  b.count(1)
end


# with bit minuplication

def count(n)
  count = 0

  while(n!=0)
    n = n&(n-1)
    count += 1
  end
  count
end



# number divisible by 2
def test(x)
  return false if x == 0
  x & (x-1) == 0
end
