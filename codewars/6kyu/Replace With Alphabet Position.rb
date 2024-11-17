def alphabet_position(text)
  text.gsub(/[^a-zA-Z]/, '').downcase.chars.map{ |x| x.ord-96 }.join(' ')
end
