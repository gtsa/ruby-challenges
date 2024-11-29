NUMBERS = {
  "zero" => 0, "one" => 1, "two" => 2, "three" => 3, "four" => 4,
  "five" => 5, "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9,
  "ten" => 10, "eleven" => 11, "twelve" => 12, "thirteen" => 13,
  "fourteen" => 14, "fifteen" => 15, "sixteen" => 16, "seventeen" => 17,
  "eighteen" => 18, "nineteen" => 19, "twenty" => 20, "thirty" => 30,
  "forty" => 40, "fifty" => 50, "sixty" => 60, "seventy" => 70,
  "eighty" => 80, "ninety" => 90
}

MULTIS = {
  "hundred" => 100,
  "thousand" => 1000,
  "million" => 1_000_000
}

def parse_int(string)
  string = string.gsub(/ and /, " ")
  tokens = string.split(/[\s-]+/)
  current_value, total_value = 0, 0

  tokens.each do |token|
    if NUMBERS.key?(token)
      current_value += NUMBERS[token]
    elsif MULTIS.key?(token)
      current_value *= MULTIS[token]
      total_value, current_value = total_value + current_value,  0 if token == "thousand" || token == "million"
    end
  end

  p total_value + current_value
end
