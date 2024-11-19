def pig_it text
  text.split.map{ |x| (x.chars[1..-1]  + [x.chars.first] + (x =~ /[[:punct:]]/ ? [] : ['ay'])).join }.join(' ')
end
