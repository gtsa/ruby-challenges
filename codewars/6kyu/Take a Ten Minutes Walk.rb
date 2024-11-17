def is_valid_walk(walk)
  pos = [0, 0]

  if walk.size == 10
    dict = { "n": [1, 0], "s": [-1, 0], "e": [0, 1], "w": [0, -1] }

    walk.each do |x|
      pos = pos.zip(dict[x.to_sym]).map { |a, b| a + b }
    end

    pos == [0, 0]
  else
    false
  end
end
