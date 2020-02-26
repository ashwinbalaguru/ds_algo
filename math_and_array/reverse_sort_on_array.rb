# reverse_sort on array of arrays

a = [[1, 2, 3], [4, 5, 6]]

# a.each {|x| x.reverse}


def reverse_sort(a)
  x = []
  a.each do |arr|
    x << mergesort(arr)
  end
  x
end


def mergesort(arr)
  return arr if arr.size == 1

  mid = arr.size/2
  left = mergesort(arr[0...mid])
  right = mergesort(arr[mid...arr.size])
  merge(left, right)
end

def merge(left, right)
  # reverse sorting
  sorted = []
  until left.empty? || right.empty?
    if right.first <= left.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end
  sorted.concat(right).concat(left)
end