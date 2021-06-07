def bubble_sort(a)
  n = a.size - 1
  swapped = false

  while(!swapped) do
    swapped = true
    i = 0
    while(i < (n-1)) do
      if a[i] > a[i+1]
        a[i], a[i+1] = a[i+1], a[i]
        swapped = false
      end
      i += 1
    end
  end
  a
end



def bubble_sort(a)
  n = a.size

  for i in 0..n-1
    for j in 0..n-i-1
      p "i => #{i}, j => #{j}"
      p "a[j] => #{a[j]}"
      if a[j+1] && a[j] > a[j+1]
        a[j], a[j+1] = a[j+1],a[j]
      end
    end
  end
end
