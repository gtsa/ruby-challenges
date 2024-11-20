def permutations(string)
  string.chars.permutation.uniq.map(&:join)
end
