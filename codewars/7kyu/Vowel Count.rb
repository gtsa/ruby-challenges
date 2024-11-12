def get_count(input_str)
  vowels = ["a", "e", "i", "o", "u"]
  input_str.chars.map {|el| vowels.include?(el) ? 1 : 0}.sum
end
