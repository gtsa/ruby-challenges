def filter_list(l)
  l.select {|el| !el.is_a?(String)}
end
