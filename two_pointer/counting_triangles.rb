# Counting Triangles
# You are given an array of N non-negative integers, A0, A1 ,…, AN-1.
# Considering each array element Ai as the edge length of some line segment, count the number of triangles which you can form using these array values.

# Notes:

# You can use any value only once while forming each triangle. Order of choosing the edge lengths doesn’t matter. Any triangle formed should have a positive area.

# Return answer modulo 109 + 7.

# For example,

# A = [1, 1, 1, 2, 2]

# Return: 4

class Solution
    # @param a : array of integers
    # @return an integer
    def nTriang(a)
      a = a.sort
      count = 0
      for i in 0..(a.size-1)
        for j in (i+1)..(a.size-1)
          for k in (j+1)..(a.size-1)
            count += 1 if a[i] + a[j] > a[k]
          end
        end
      end
      count
    end
end


# complexity O(n**2)
class Solution
    # @param a : array of integers
    # @return an integer
    def nTriang(a)
      a = a.sort
      count = 0
      n = a.size

      for i in 0..(n-3)
        k = i + 2
        for j in (i+1)..(n-2)
           while (k<n && (a[i] + a[j] > a[k]))
             k += 1
           end

           count += k - j -1 if (k > j)
        end
      end
      count
  end
end



# 2 pointer approach, time complexity O(n*2)
class Solution
    # @param a : array of integers
    # @return an integer
    def nTriang(a)
      a = a.sort
      count = 0
      n = a.size

      for ele in 0..n-1
        left = 0
        right = ele - 1

        while (left<right)
          if (a[left] + a[right] > a[ele])
            count += right - left
            right -= 1
          else
            left += 1
          end
        end
      end
      count
    end
end
