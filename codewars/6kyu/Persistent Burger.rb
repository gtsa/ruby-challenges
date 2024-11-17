def persistence(n)
  i = 0
  while n >= 10 do
    i += 1
    n = n.digits.reduce(1, :*)
  end
  i
end
