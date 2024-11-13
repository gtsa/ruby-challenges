def is_triangle(a,b,c)
  [a,b,c].sort[0...-1].sum > [a,b,c].max
end
