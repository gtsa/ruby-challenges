def solution(number)
  ((0...number).step(5).to_a+(0...number).step(3).to_a).uniq.sum
end
