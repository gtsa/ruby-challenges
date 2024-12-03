class Array
  def deep_nil
    self.map! do |element|
      element.is_a?(Array) ? element.deep_nil : nil
    end
  end

  def same_structure_as(second_array)
    return false unless second_array.is_a?(Array)

    a = self.map { |x| x.is_a?(Array) ? x.deep_nil : nil}
    b = second_array.map { |x| x.is_a?(Array) ? x.deep_nil : nil}
    a == b
  end
end
