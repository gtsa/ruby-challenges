def row_sum_odd_numbers(n)
  i = 0;
  res = [1]
  while i < n-1
    res = [res.last + 2 ]
    for i in 0..(i)
      res << res.last + 2
    end
    i += 1
  end;
  res.sum
end
