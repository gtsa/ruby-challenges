class Sudoku
  def initialize(data)
    @data = data
    @n = @data.length
    @series = (1..@n).to_a
  end

  def valid?
    n_sub = @n ** 0.5
    n_sub % 1 == 0
    @data.each { |subarray| p subarray.length == @n }
    return false if n_sub % 1 != 0
    return false unless @data.all? { |subarray| subarray.length == @n }

    n_sub = n_sub.to_i
    sets = []
    @data.each { |row| sets << row.dup.sort }
    @data.transpose.each { |row| sets << row.dup.sort }

    @data.each_slice(n_sub) do |part|
      n_sub.times do |i|
        temp = []
        part.each do |subpart|
          temp.concat(subpart[i * n_sub, n_sub])
        end
        sets << temp.sort
      end
    end

    sets.all? { |subarray| subarray == @series }
  end
end
