def decodeMorse(morseCode)
  morse_code = {
  'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..',
  'E' => '.', 'F' => '..-.', 'G' => '--.', 'H' => '....',
  'I' => '..', 'J' => '.---', 'K' => '-.-', 'L' => '.-..',
  'M' => '--', 'N' => '-.', 'O' => '---', 'P' => '.--.',
  'Q' => '--.-', 'R' => '.-.', 'S' => '...', 'T' => '-',
  'U' => '..-', 'V' => '...-', 'W' => '.--', 'X' => '-..-',
  'Y' => '-.--', 'Z' => '--..',
  '0' => '-----', '1' => '.----', '2' => '..---', '3' => '...--',
  '4' => '....-', '5' => '.....', '6' => '-....', '7' => '--...',
  '8' => '---..', '9' => '----.',
    '.' => '.-.-.-', ',' => '--..--', '?' => '..--..',
  '!' => '-.-.--', ':' => '---...', '\'' => '.----.',
  '"' => '.-..-.', '/' => '-..-.', '-' => '-....-',
  '(' => '-.--.', ')' => '-.--.-',
  'SOS' => '...---...'
  }
  inverted_morse_code = morse_code.each_with_object({}) do |(char, morse), inverted|
  inverted[morse] = char
  end
  p morseCode
  morseCode.split('   ').map(&:split).map { |x| x.map {|el| inverted_morse_code[el]}.join}.join(' ').strip
end