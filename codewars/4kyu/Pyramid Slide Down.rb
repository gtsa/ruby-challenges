def longest_slide_down(pyramid)
  pyramid.reverse.map.with_index do |x, index|
    if index == 0
      x
    else
      x.map.with_index do |el, index_el|
        pyramid[pyramid.size - index - 1][index_el] = el + pyramid.reverse[index-1][index_el..index_el+1].max
      end
    end
  end
  pyramid.first.first
end
