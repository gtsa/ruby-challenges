def solution(str, ending)
  str[-ending.length..-1] == ending || ending == ""
end
