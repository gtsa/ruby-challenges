def accum(s)
	s.chars.map.with_index { |let, index| (let*(index+1)).capitalize }.join('-')
end
