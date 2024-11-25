# preloaded: MORSE_CODE

def decodeBits(bits)
  bits = bits.sub(/^0+/, '').sub(/0+$/, '')
  n = bits.length
  (n / 2).downto(1).reverse_each do |factor|
    chunk_size = n / factor
    next unless n % factor == 0
    chunks = bits.scan(/.{#{chunk_size}}/)
    return chunks.map(&:chr).join if chunks.all?{|x| x.chars.uniq.length == 1}
  end
  bits
end


def decodeMorse(temp_code)
  morse_code = decodeBits(temp_code)
  words = morse_code.split(/0{1,2}/).map do |sequence|
    case sequence.length
    when 1
      '.'
    when 3
      '-'
    else
      ' '
    end
  end.join
  words.split('   ').map(&:split).map{|word| word.map{|l| MORSE_CODE[l]}.join}.join(' ')
end
