class Parse
  def initialize file
    file = file
    @lines = file.readlines
  end

  def parse target
    flag = false
    result = []
    @lines.each do |line|
      if line.include? target
        flag = true
      end
      result << line if flag
    end
    result.join
  end

  def parse_new target
    target_index = (0..@lines.size-1).detect do |i|
      @lines[i].include? target
    end
    target_index ? @lines[target_index..-1].join : []
  end
end
