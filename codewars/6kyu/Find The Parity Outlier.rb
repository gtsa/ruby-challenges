def find_outlier(integers)
  integers.first(3).count(&:even?) > 1 ? integers.find(&:odd?) : integers.find(&:even?)
end
