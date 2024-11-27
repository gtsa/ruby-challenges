class User
  attr_reader :progress, :rank

  LEVELS = {
      "-8": 0, "-7": 1, "-6": 2, "-5": 3, "-4": 4, "-3": 5, "-2": 6, "-1": 7,
      "1": 8, "2": 9, "3": 10, "4": 11, "5": 12, "6": 13, "7": 14, "8": 15
    }

  def initialize
    @rank = -8
    @progress = 0
  end

  def inc_progress(activity_rank)
    raise "Invalid rank input" if activity_rank < -8 || activity_rank > 8 || activity_rank == 0

    if LEVELS[activity_rank.to_s.to_sym] == LEVELS[@rank.to_s.to_sym]
      @progress += 3
    elsif LEVELS[activity_rank.to_s.to_sym] == LEVELS[@rank.to_s.to_sym] - 1
      @progress += 1
    elsif activity_rank > @rank
      @progress += ((LEVELS[activity_rank.to_s.to_sym] - LEVELS[@rank.to_s.to_sym]) ** 2) * 10
    end

    if @rank < 8
      @rank += @progress / 100
      @rank = 1 if @rank.zero?
      @progress = @rank == 8 ? 0 : @progress % 100
    else
      @progress = 0
    end
  end
end
