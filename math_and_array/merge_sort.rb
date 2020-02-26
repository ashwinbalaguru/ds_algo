def merge_sort(arr)
  return arr if arr.size <= 1

  mid = arr.size / 2
  left = merge_sort(arr[0...mid])
  right = merge_sort(arr[mid...arr.size])
  merge(left, right)
end

def merge(left, right)
  sorted = []
  until left.empty? || right.empty?
    if left.first <= right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end
  sorted.concat(left).concat(right)
end