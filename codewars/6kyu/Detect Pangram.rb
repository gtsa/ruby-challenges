def pangram?(string)
  ('a'..'z').to_a.map{ |x| string.downcase.include?(x) }.all?
end
