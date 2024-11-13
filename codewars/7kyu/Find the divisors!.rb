def divisors(n)
  res = (2...n).select { |i| n % i == 0 }
  res == [] ? "#{n} is prime" : res
end
