def square_digits num
  num.digits.reverse.map{|x| x**2}.join.to_i
end
