def find_next_square(sq)
  sq**0.5%1==0 ? ((sq**0.5+1)**2).to_i  : -1
end
