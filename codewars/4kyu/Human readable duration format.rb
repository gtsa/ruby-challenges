MAPPING = {
  year: 1 * 60 * 60 * 24 * 365,
  day: 1 * 60 * 60 * 24,
  hour: 1 * 60 * 60,
  minute: 1 * 60,
  second: 1
}

def format_duration(seconds)
  return 'now' if seconds == 0

  res = []

   MAPPING.each do |key, value|
    if seconds >= value
      res << [seconds / value, key.to_s + (seconds / value > 1 ? 's' : '')].join(' ')
      seconds = seconds % value
    end
  end

  res.map.with_index do |x, index|
    if !index.zero? && !(index == res.size-1 && res.size > 1)
      ", #{x}"
    elsif index == res.size-1 && res.size > 1
      " and #{x}"
    else
      x
    end
  end.join
end
