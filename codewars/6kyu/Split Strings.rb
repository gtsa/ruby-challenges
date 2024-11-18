def solution(str)
  return [] if str == ""

  res = str.scan(/.{1,2}/)
  p res
  res[-1].length == 1 ? res[-1] = "#{res[-1]}_" : res
  res
end
