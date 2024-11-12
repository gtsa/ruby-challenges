def find_short(s)
  l = s.split.sort_by {|x| x.length}.first
  return l.length # l: length of the shortest word
end
