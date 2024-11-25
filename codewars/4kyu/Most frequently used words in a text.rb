def top_3_words(text)
  res = Hash.new(0)
  text.downcase.gsub(/(?<!\w)'(?!\w)|[[:punct:]&&[^']]/, '').split.each { |x| res[x] += 1 }
  res.sort_by { |_, value| -value }[..2].map(&:first)
end
