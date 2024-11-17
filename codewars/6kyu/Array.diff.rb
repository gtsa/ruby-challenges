def array_diff(a, b)
  new = a.filter { |x| !b.include?(x) }
end
