def narcissistic?(value)
  value.digits.map { |x| x ** value.digits.size }.sum == value
end
