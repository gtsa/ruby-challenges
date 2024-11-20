def sum_of_intervals(intervals)
  sorted_intervals = intervals.sort_by(&:first)

  merged_intervals = []
  current_interval = sorted_intervals[0]

  sorted_intervals.each do |interval|
    if interval[0] <= current_interval[1]
      current_interval[1] = [current_interval[1], interval[1]].max
    else
      merged_intervals << current_interval
      current_interval = interval
    end
  end

  merged_intervals << current_interval

  merged_intervals.sum { |interval| interval[1] - interval[0] }
end
