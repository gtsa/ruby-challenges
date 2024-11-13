def nb_year(p0, percent, aug, p)
  i = 0
  while p0 < p
    i += 1
    p0 += (aug + percent * p0 /100).to_i
  end
  i
end
