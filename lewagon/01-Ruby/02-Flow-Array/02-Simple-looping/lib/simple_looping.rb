def sum_with_for(min, max)
  # CONSTRAINT: you should use a for..end structure
  if min <= max
    sum = 0
    for i in (min..max)
      sum += i
    end
    return sum
  else
    return -1
  end
end

def sum_with_while(min, max)
  # CONSTRAINT: you should use a while..end structure
  i = min
  sum = 0
  while i <= max
    sum += i
    i += 1
  end
  return min > max ? -1 : sum
end
