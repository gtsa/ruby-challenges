def DNA_strand(dna)
  dict = { "A": "T", "T": "A", "C": "G", "G": "C"}
  dna.chars.map {|x| dict[x.to_sym]}.join
end
