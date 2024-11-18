def dig_pow(n, p)
  res = n.digits.reverse.map.with_index { |x, index| x ** (p + index) }.sum
  res % n == 0 ? res / n : -1
end
