def next_smaller n
  p n
  digits = n.to_s.chars
  return -1 if smallest_permutation?(digits)

  i = find_swap_index(digits)
  return -1 unless i

  result = rearrange_digits(digits, i)
  result.start_with?('0') ? -1 : result.to_i
end

def smallest_permutation?(digits)
  digits.sort == digits || (digits[1] == '0' && ([digits.first] + digits[2..]).sort == ([digits.first] + digits[2..]))
end

def find_swap_index(digits)
  (digits.length - 2).downto(0) do |i|
    return i if digits[i] > digits[i + 1]
  end
  nil
end

def rearrange_digits(digits, i)
  left_part = digits[0...i]
  rest = digits[i..]
  smaller_digit = rest.select { |x| x < digits[i] }.max
  rest.delete_at(rest.index(smaller_digit))
  (left_part + [smaller_digit] + rest.sort.reverse).join
end
