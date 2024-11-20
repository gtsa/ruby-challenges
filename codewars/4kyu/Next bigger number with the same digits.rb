def next_bigger(n)
  digits = n.to_s.chars
  i = digits.size - 2

  while i >= 0 && digits[i] >= digits[i + 1]
    i -= 1
  end

  return -1 if i == -1

  j = digits.size - 1
  while digits[j] <= digits[i]
    j -= 1
  end

  digits[i], digits[j] = digits[j], digits[i]

  result = (digits[0..i] + digits[i+1..-1].sort).join.to_i

  result
end
