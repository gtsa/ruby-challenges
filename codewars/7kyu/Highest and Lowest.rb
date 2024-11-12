def high_and_low(numbers)
  nums = numbers.split.map(&:to_i)
  [nums.max, nums.min].join(' ')
end
