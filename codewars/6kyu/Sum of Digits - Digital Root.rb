def digital_root(n)
  while n >= 10 do
    n = n.digits.sum
  end
  n
end
