def word_contains_at_least_two_p(sentence)
  # TODO: return the first word in `sentence` containing two 'p's or more
  regexp = /\w*p\w*p\w*/
  sentence.scan(regexp)[0]
end

def word_before_exclamation_mark(sentence)
  # TODO: return the first word located before an exclamation mark
  # Hint: you may want to use `()` groups!
  regexp = /\w+!/
  sentence.scan(regexp)[0][0...-1]
end

def four_letter_word(sentence)
  # TODO: return the first four-letter word starting with 'b', followed with a comma `,`
  regexp = /\bb\w{3},/
  sentence.scan(regexp)[0][0...-1]
end

def last_five_letters(sentence)
  # TODO: return the last five letters of the sentence
  regexp = /\w/
  sentence.scan(regexp)[-5..].join
end

def word_contains_ll(sentence)
  # TODO: return the first word containing two consecutive 'l'
  regexp = /\w*ll\w*/
  sentence.scan(regexp)[0]
end

def six_letter_word(sentence)
  # TODO: return the first six-letter word, composed of letters from 'a' to 'r'
  regexp = /\b[a-rA-R]{6}\b/
  sentence.scan(regexp)[0]
end

def all_capital_letters(sentence)
  # TODO: return all the capital letters as a string
  # Hint: use `scan` to get all the occurences then `join` them
  regexp = /[A-Z]/
  sentence.scan(regexp).join
end
