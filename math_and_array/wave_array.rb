# Wave Array

# Given an array of integers, sort the array into a wave like array and return it,
# In other words, arrange the elements into a sequence such that a1 >= a2 <= a3 >= a4 <= a5.....

# Example

# Given [1, 2, 3, 4]

# One possible answer : [2, 1, 4, 3]
# Another possible answer : [4, 1, 3, 2]
#  NOTE : If there are multiple answers possible, return the one thats lexicographically smallest.
# So, in example case, you will return [2, 1, 4, 3]

class Solution
    # @param a : array of integers
    # @return an array of integers
    def wave(a)
        a = a.sort
        i = 0
        while(i < a.size)
          temp = a[i]
          a[i] = a[i+1]
          a[i+1] = temp
          i+=2
        end
        a.compact
    end
end

