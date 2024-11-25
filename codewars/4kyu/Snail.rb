def snail(array)
  i = array.size
  j = array.size
  res = []
  while !array.empty?
#     orizontia pros dexia
    res.concat(array.shift)
    p res
#     ka8eta pros katw
    array.map do |x|
      res << x.pop
    end
    t = array.pop
    res.concat(t.reverse) unless t.nil?
#     ka8eta pros panw
    array.reverse.map do |x|
      t = x.shift
      t.is_a?(Integer) ? res << t : t.concat(t)
    end
  end
  res
end
