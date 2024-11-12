def get_sum(a,b)
  ((a..b).to_a | (b..a).to_a).sum
end
