# Given an unsorted array nums, reorder it in-place such that nums[0] < nums[1] > nums[2] < nums[3]....

# Example:
# Input: nums = [3,5,2,1,6,4]
# Output: One possible answer is [3,5,1,6,2,4]

def wiggle_sort(nums)
  for i in 0..nums.length-1
    break unless nums[i+1]
    if i.even?
      if nums[i] > nums[i+1]
        # swap = nums[i]
        # nums[i] = nums[i+1]
        # nums[i+1] = swap
        swap(nums, i, i+1)
      end
    else
      if nums[i] < nums[i+1]
        # swap = nums[i]
        # nums[i] = nums[i+1]
        # nums[i+1] = swap
        swap(nums, i, i+1)
      end
    end
  end
  nums
end


def swap(nums, a, b)
  temp = nums[a]
  nums[a] = nums[b]
  nums[b] = temp
end