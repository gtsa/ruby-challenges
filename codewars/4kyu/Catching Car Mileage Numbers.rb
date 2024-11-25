def is_interesting(number, awesome_phrases)
  return 2 if  meets_awesome_criteria?(number, awesome_phrases)

  return 1 if meets_awesome_criteria?(number+1, awesome_phrases) || meets_awesome_criteria?(number+2, awesome_phrases)

  0
end

def meets_awesome_criteria?(number, awesome_phrases)
  number > 99 &&
  (all_zeros?(number) ||
      all_digits_same?(number) ||
      digits_incr_seq?(number) ||
      digits_decr_seq?(number) ||
      palindrome?(number) ||
      in_awesome_phrases(number, awesome_phrases))
end

def all_zeros?(number)
  number.to_s[1..].to_i == 0
end

def all_digits_same?(number)
  number.to_s.chars.uniq.length == 1
end

def digits_incr_seq?(number)
  seq_test = ('1'..'9').to_a + ['0']
  elems = number.to_s.chars
  seq_test.each_cons(elems.size).include?(elems)
end

def digits_decr_seq?(number)
  seq_test = ('0'..'9').to_a.reverse
  elems = number.to_s.chars
  seq_test.each_cons(elems.size).include?(elems)
end

def palindrome?(number)
  number == number.digits.join.to_i
end

def in_awesome_phrases(number, awesome_phrases)
  awesome_phrases.include? number
end
