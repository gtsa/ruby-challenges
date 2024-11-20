def solution(list)
  result = []
  current_group = [list.first]

  list.each_cons(2) do |a, b|
    if b == a + 1
      current_group << b
    else
      if current_group.size > 2
        result << "#{current_group.first}-#{current_group.last}"
      else
        result.concat(current_group)
      end
      current_group = [b]
    end
  end

  if current_group.size > 2
    result << "#{current_group.first}-#{current_group.last}"
  else
    result.concat(current_group)
  end

  result.join(',')
end
