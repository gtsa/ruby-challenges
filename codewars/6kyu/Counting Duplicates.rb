def duplicate_count(text)
  text.downcase.chars.uniq.select { |x| text.downcase.count(x) > 1 }.length
end
