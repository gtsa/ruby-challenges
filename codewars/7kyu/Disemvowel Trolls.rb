def disemvowel(str)
  str.chars.map {|el| el.downcase.count("aeiou") > 0 ? '' : el}.join
end
