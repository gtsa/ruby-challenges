def duplicate_encode(word)
  word.downcase.chars.map{|x| word.downcase.count(x) > 1 ? ')' : '('}.join
end
