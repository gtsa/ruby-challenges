class OrangeTree
  # TODO: Implement all the specs defined in the README.md :)
  attr_reader :age, :height, :fruits

  def initialize
    @age = 0
    @height = 0
    @dead = false
    @fruits = 0
  end

  def one_year_passes!
    return if @dead

    if @age < 50
      @age += 1
      @height += @age > 10 ? 0 : 1
      @fruits = if @age > 5 && @age < 15
                  @age >= 10 ? 200 : 100
                else
                  0
                end
    else
      @dead = (([true] * (@age - 49)) + ([false] * (99 - @age))).sample
      @age += @dead ? 0 : 1
    end
  end

  def dead?
    @dead
  end

  def pick_a_fruit!
    @fruits -= 1 unless @fruits.zero?
  end
end
