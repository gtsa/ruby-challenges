def number(bus_stops)
  res = 0
  for pair in bus_stops
    res += pair.first - pair.last
  end
  res
end
