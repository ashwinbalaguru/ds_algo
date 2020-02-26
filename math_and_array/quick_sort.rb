def quicksort(arr, first, last)
  if first < last
    p_index = partition(arr, first, last)
    p p_index
    quicksort(arr, first, p_index - 1)
    quicksort(arr, p_index + 1, last)
  end

  arr
end

def partition(arr, first, last)
  # first select one element from the list, can be any element.
  # rearrange the list so all elements less than pivot are left of it, elements greater than pivot are right of it.
  pivot = arr[last]
  p_index = first

  i = first

  p "pivot- #{pivot}, p_index-#{p_index}, i-#{i}"

  while i < last
    if arr[i] <= pivot
      temp = arr[i]
      arr[i] = arr[p_index]
      arr[p_index] = temp
      p_index += 1
    end
    i += 1
  end
  temp = arr[p_index]
  arr[p_index] = pivot
  arr[last] = temp
  return p_index
end





def quick_sort(a, f, l)
  if f < l
    p_index = partition(a, f, l)
    p "f-#{f}, l-#{l}, p_index-#{p_index}"
    quick_sort(a, f, p_index-1)
    quick_sort(a, p_index+1, l)
  end
  a
end

def partition(a, f, l)
  pivot = a[l]
  p_index = f
  i = f

  while (i < l)
    if a[i] <= pivot
      temp = a[p_index]
      a[p_index] = a[i]
      a[i] = temp
      p_index += 1
    end
    i+=1
  end

  temp = a[p_index]
  a[p_index] = pivot
  a[l] = a[p_index]
  p_index
end




