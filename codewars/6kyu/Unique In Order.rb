def unique_in_order(iterable)
  return [] if iterable == "" || iterable == []

  result = []
  iterable = iterable.is_a?(Array) ? iterable : iterable.chars
  iterable.each_with_index do |char, index|
    result << char if index == 0 || char != iterable[index - 1]
  end
  p result
end
