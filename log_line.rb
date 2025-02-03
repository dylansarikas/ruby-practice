class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    return @line[(@line.index(" ")+1)..].strip
  end

  def log_level
    return @line[0, @line.index("]")].gsub(/[^0-9a-z ]/i, '').downcase
  end

  def reformat
    return "#{message} (#{log_level})"
  end
end
