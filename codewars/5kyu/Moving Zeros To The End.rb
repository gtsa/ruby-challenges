def moveZeros(arr)
  arr.reject{ |x| x == 0 } + [0] * arr.count(0)
end
