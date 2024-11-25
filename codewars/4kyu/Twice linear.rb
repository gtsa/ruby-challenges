def dbl_linear(n)
  u = [1]
  i = 0
  i, j = 0, 0

  while u.size <= n
    y = 2 * u[i] + 1
    z = 3 * u[j] + 1

    if y < z
      u << y
      i += 1
    elsif y > z
      u << z
      j += 1
    else
      u << y
      i += 1
      j += 1
    end
  end
  u[n]
end
