def screws(s)
  res = 2*s.size-1
  ini = s.chars.first
  s.chars.each do |x|
    if x != ini
      then res += 5
      ini = x
    end
  end
  res
end
