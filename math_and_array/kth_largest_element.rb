# k largest(or smallest) elements in an array | added Min Heap method
# Question: Write an efficient program for printing k largest elements in an array. Elements in array can be in any order.
# For example, if given array is [1, 23, 12, 9, 30, 2, 50] and you are asked for the largest 3 elements i.e., k = 3 then your program should print 50, 30 and 23.

# Recommended: Please solve it on “PRACTICE ” first, before moving on to the solution.

# Method 1 (Use Bubble k times)
# Thanks to Shailendra for suggesting this approach.
# 1) Modify Bubble Sort to run the outer loop at most k times.
# 2) Print the last k elements of the array obtained in step 1.



# Time Complexity: O(nk)



# Like Bubble sort, other sorting algorithms like Selection Sort can also be modified to get the k largest elements.

# Method 2 (Use temporary array)
# K largest elements from arr[0..n-1]

# 1) Store the first k elements in a temporary array temp[0..k-1].
# 2) Find the smallest element in temp[], let the smallest element be min.
# 3-a) For each element x in arr[k] to arr[n-1]. O(n-k)
# If x is greater than the min then remove min from temp[] and insert x.
# 3-b)Then, determine the new min from temp[]. O(k)
# 4) Print final k elements of temp[]

# Time Complexity: O((n-k)*k). If we want the output sorted then O((n-k)*k + klogk)

# Thanks to nesamani1822 for suggesting this method.

# Method 3(Use Sorting)
# 1) Sort the elements in descending order in O(nLogn)
# 2) Print the first k numbers of the sorted array O(k).
# Following is the implementation of above.
# filter_none

class Solution
    # @param a : constant array of integers
    # @param b : integer
    # @return an integer
    def kthsmallest(a, b)
      max = a.max
      min = a.min

      while true
        count_min = 0
        count_min_equal = 0
        mid = (min+max)/2

        for i in 0..(a.size-1)
          if a[i] < mid
            count_min += 1
          end

          if a[i] <= mid
            count_min_equal += 1
          end
        end


        if count_min_equal >= b && count_min < b
          return mid
        elsif count_min >= b
          max = mid - 1
        else
          min = mid + 1
        end

      end
    end
end





# attempts
# a = [1, 23, 12, 9, 30, 2, 50]
# k = 3

def k_element_bubble_sort(a, k)
  n = a.size

  for i in 0..k-1
    for j in 0..n-i-1
      # p "i => #{i}, j => #{j}"
      # p "a[j] => #{a[j]}"
      if a[j+1] && a[j] > a[j+1]
        a[j], a[j+1] = a[j+1],a[j]
      end
    end
  end
  a[k+1..-1]
end


# brute force
def k_element(a, k)
  final = []
  for i in 0..k-1
    final << a.sort.reverse[i]
  end
  final
end



def k_element(a, k)
  temp = a.slice(0,k)

  for i in 0..(a.size-1)
    min = temp.min
    if a[i] > min
      temp[temp.index(min)] = a[i]
    end
  end
  temp
end

def kth_element(a, b)
  max = a.max
  min = a.min

  while true
    count_min = 0
    count_min_equal = 0
    mid = (min+max)/2

    for i in 0..(a.size-1)
      if a[i] < mid
        count_min += 1
      end

      if a[i] <= mid
        count_min_equal += 1
      end
    end


    if count_min_equal >= b && count_min < b
      return mid
    elsif count_min >= b
      max = mid - 1
    else
      min = mid + 1
    end

  end
end





int Solution::kthsmallest(const vector<int> &A, int B)
{
    int maximum = 0;
    for(int a : A) maximum = max(maximum, a);
    int low = 0, high = maximum;
    while(low != high)
    {
        int mid = (low + high + 1)/2;
        int count = 0;
        for(int a : A)
        {
            if(a < mid) count++;
        }
        if(count < B) low = mid;
        else high = mid - 1;
    }
    return low;
}


















