def mix(s1, s2)
  s1 = s1.gsub(/[^a-z]/, '').chars.each_with_object(Hash.new(0)) { |char, hash| hash[char] += 1 }.select { |key, value| value > 1 }
  s2 = s2.gsub(/[^a-z]/, '').chars.each_with_object(Hash.new(0)) { |char, hash| hash[char] += 1 }.select { |key, value| value > 1 }
  array = []
  ('a'..'z').each do |x|
    x
    if s1[x] && s2[x]
      array << (s1[x] > s2[x] ? "1:#{x * s1[x]}" : (s1[x] < s2[x] ? "2:#{x * s2[x]}" : "=:#{x * s1[x]}"))
    elsif s1[x]
      array << "1:#{x * s1[x]}"
    elsif s2[x]
      array << "2:#{x * s2[x]}"
    end
  end
  array.sort_by{ |x| x[0].ord }.sort_by{ |x| -x.size }.join('/')
end
