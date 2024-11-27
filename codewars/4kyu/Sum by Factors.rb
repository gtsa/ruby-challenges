require 'prime'

def sumOfDivided(lst)
  Prime.each(lst.map(&:abs).max).to_a.map do |x|
    sum = []
    lst.each { |el| sum << el if el % x == 0 }
    sum.empty? ? nil : [x, sum.sum]
  end.compact
end
