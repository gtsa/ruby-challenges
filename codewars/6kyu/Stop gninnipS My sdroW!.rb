def spin_words(string)
  string.split.map {|x| x.length < 5 ? x : x.reverse }.join(" ")
end
