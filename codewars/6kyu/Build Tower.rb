def towerBuilder(n_floors)
  length = 2 * n_floors - 1
  res = []
  for i in 1..n_floors
    res << " " * ((length - (2 * i - 1))/2)  + "*" * (2 * i - 1) + " " * ((length - (2 * i - 1))/2)
  end
  res
end
