def order(words)
  words.split.map { |x| [x.gsub(/\D/, '').to_i, x] }.sort.map { |_, w| w }.join(' ')
end
