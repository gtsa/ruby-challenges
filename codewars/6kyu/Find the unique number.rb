def find_uniq(arr)
  res = arr.tally.find { |_, count| count == 1}
  res ? res.first : nil
end
