def reverse_words(str)
  p [str, words_count = [str.split.size-1, 1].max, spaces_count = str.count(" "), space = spaces_count/words_count]
  str.split.map(&:reverse).join(' ' * space)
end
