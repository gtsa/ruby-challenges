MAPPING = {
    "I" => 1,
    "IV" => 4,
    "V" => 5,
    "IX" => 9,
    "X" => 10,
    "XL" => 40,
    "L" => 50,
    "XC" => 90,
    "C" => 100,
    "CD" => 400,
    "D" => 500,
    "CM" => 900,
    "M" => 1000
  }

class RomanNumerals
    def self.from_roman(str)
      res = 0
      until str.empty?
        temp = MAPPING[str[0..1]] ? str[0..1] : str[0]
        res += MAPPING[temp]
        str = str.sub(/[#{temp}]{#{temp.size}}/, '')
      end
      res
    end

    def self.to_roman(int)
      mapping = MAPPING.invert.reverse_each
      res = ""
      while int > 0
        temp = mapping.find { |key, _| key.to_int <= int }
        res += temp.last
        int -= temp.first
      end
      res
    end
end
