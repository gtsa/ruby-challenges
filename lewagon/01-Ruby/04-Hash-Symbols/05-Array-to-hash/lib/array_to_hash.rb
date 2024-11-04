def array_to_hash(array)
  # TODO: implement the method :)
  hash = {}
  array.each_with_index { |x, index| hash[block_given? ? yield(index) : index.to_s] = x }
  hash
end
