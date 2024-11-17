def find_it(seq)
  seq.find{ |x| seq.count(x).odd? }
end
