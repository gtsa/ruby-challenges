def are_you_playing_banjo(name)
  name.chars.first.downcase == "r" ? "#{name} plays banjo" : "#{name} does not play banjo"
end
