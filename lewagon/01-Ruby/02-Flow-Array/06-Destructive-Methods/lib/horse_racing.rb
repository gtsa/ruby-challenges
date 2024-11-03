def horse_racing_format!(race_array)
  # TODO: modify the given array so that it is horse racing consistent. This method should return nil.
  race_array.map! { |horse| "#{race_array.index(horse) + 1}-#{horse}!" }
  race_array.reverse!
end
