def likes(names)
  case names.length
    when 0 then "no one likes this"
    when 1 then "#{names[0]} likes this"
    when 2 then "#{names[0]} and #{names[1]} like this"
    when 3 then "#{names[0]}, #{names[1]} and #{names[2]} like this"
  else "#{names[0]}, #{names[1]} and #{names.length - 2} others like this"
  end
end
