def horse_racing_format!(race_array)
  # TODO: modify the given array so that it is horse racing consistent. This method should return nil.
  race_array.map!.with_index { |x, index| "#{index + 1}-#{x}!" }.reverse!
end
