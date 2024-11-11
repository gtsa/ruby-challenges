def collinearity(x1, y1, x2, y2)
  x2/(x1.to_f) == y2/(y1.to_f) or [x1, y1] == [0, 0] or [x2, y2] == [0, 0] or [x1, x2] == [0, 0] or [y1, y2] == [0, 0]
end
