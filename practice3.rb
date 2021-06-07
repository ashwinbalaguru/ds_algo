nums.select {|x| (nums.count(x) > nums.length/2)}.last


    x = nil
    for i in 0..nums.length-1
        nums.count(nums[i])
        x = nums[i]
        break if nums.count(nums[i]) > nums.length/2
    end
    x

val = nums.uniq

x = nil
val.each do |v|
  x = v
  break if nums.count(v) > nums.length/2
end
x


s = 'AB'

list = ('A'..'Z').to_a

result = 0
for i in 0..s.size-1
  result *= 26
  result += (list.find_index(s[i]) + 1)
end
result



n = 701

list = ('A'..'Z').to_a

result = ''
while n != 0
  char = n % 26 - 1
  result += list[char]
  n = n / 26 - 1
end
result.reverse



n = 700
list = ('A'..'Z').to_a

result = ''
while n != 0
  rem = n % 26 - 1
  result += list[rem]
  n = n / 26
end



s = "abbcccddddeeeeedcba"

return 0 unless s.size>0

count = 1
max = 0
for i in 0..s.size-1
  if s[i] == s[i+1]
    count += 1
  else
    count = 1
  end
  max = count if count > max
end
max



    return 0 unless nums.include? 1

    max = 0
    count = 1
    for i in 0..nums.size-1
        if nums[i] == nums[i+1] && nums[i] == 1
           count += 1
        else
           count = 1
        end
        max = count if count > max
    end
    max




min = 1; max = 9



def trailing_zeroes(n)
  val = factorial(n)
  count = 0
  while val > 0
    if val % 10 == 0
      count += 1
      val = val / 10
    else
      break
    end
  end
  count
end

def factorial(num)
  return 1 unless num > 0
  num * factorial(num - 1)
end






def trailing_zeroes(n)
  val = 0
  count = 1
  x = 1
  while x != 0
    x = n / (5**count)
    val += x
    count += 1
  end
  val
end




nums = [1, 5, 1, 1, 6, 4]
# nums = [3, 5, 2, 1, 6, 4]
nums = [1,2,2,1,2,1,1,1,1,2,2,2]

for i in 0..nums.length-1
  break unless nums[i+1]
  if i.even?
    if nums[i] > nums[i+1]
      swap = nums[i]
      nums[i] = nums[i+1]
      nums[i+1] = swap
    end
  else
    if nums[i] < nums[i+1]
      swap = nums[i]
      nums[i] = nums[i+1]
      nums[i+1] = swap
    end
  end
end

nums

def wiggle_sort(nums)
  for i in 0..nums.length-1
    break unless nums[i+1]
    if i.even?
      for j in (i+1)..nums.length-1
        if nums[i] > nums[j]
          swap(nums, i, i+1)
          break
        end
      end
    else
      for j in (i+1)..nums.length-1
        if nums[i] < nums[j]
          swap(nums, i, i+1)
          break
        end
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
























