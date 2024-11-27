def gcd(a, b)
  while b != 0
    a, b = b, a % b
  end
  a
end

def solution(numbers)
  gcd_result = numbers.reduce { |gcd_accum, num| gcd(gcd_accum, num) }
  p gcd_result * numbers.size
end
