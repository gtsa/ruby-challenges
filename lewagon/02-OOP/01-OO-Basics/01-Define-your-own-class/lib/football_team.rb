class FootballTeam
  def initialize(name, color, ground, country, top_tier)
    @name = name
    @color = color
    @ground = ground
    @country = country
    @top_tier = top_tier
  end

  def change_tier
    @top_tier = ["top_tier", "second_tier"].reject { |x| x == @top_tier }
  end
end
