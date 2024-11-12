def get_middle(s)
  s[s.length.odd? ? s.length/2 : s.length/2-1..s.length/2]
end
