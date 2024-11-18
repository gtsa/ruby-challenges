def find_even_index(arr)
  n = 0
  while n < arr.size && arr[...n].sum != arr[n+1..].sum
    n += 1
  end
  n > arr.size - 1 ? -1 : n
end
