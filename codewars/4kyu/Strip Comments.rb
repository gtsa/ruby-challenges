def solution(input, markers)
  res = input.split("\n").map do |x|
    for i in markers
      x = x.partition(i).first.strip
    end
    x
  end
  res.join("\n")
end
