def palindrome?(a_string)
  # TODO: check if a_string is a palindrome
  a_string != "" && (str = a_string.gsub(/[[:punct:]\s]/, '').downcase) == str.reverse
end
