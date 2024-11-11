def is_opposite(s1, s2)
  s1.chars.map{|el| el != el.upcase ? el.upcase : el.downcase}.join == s2 && s1 != ""
end
