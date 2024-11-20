def get_pins(observed)
  temp_array = observed.chars.map{|x| x.to_i == 0 ? 11 : x.to_i}
  temp_array.map! do |x|
    [[1, 2, 3].include?(x) ? nil : x - 3,
      [1, 4, 7, 11].include?(x) ? nil : x - 1,
      x,
      [3, 6, 9, 11].include?(x) ? nil : x + 1,
      [7, 11, 9].include?(x) ? nil : x + 3]
    .compact
    .map{|num| num == 11 ? 0 : num}
  end
  temp_array.first.product(*temp_array[1..-1]).map(&:join)
end
