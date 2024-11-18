def sort_array(source_array)
  res = []
  temp = []
  source_array.each do |x|
    if x.odd? then
      temp << x
      res << nil
    else
      res << x
    end
  end
  temp.sort!
  res.map { |x| x.nil? ? temp.shift : x}
end
