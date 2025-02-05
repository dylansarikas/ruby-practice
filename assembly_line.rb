class AssemblyLine
    def initialize(speed)
      @speed = speed
    end
  
    def production_rate_per_hour
      if @speed < 5
        total = @speed * 221
      elsif @speed > 4 && @speed < 9
        total = @speed * 221 * 0.9
      elsif @speed == 9
        total = @speed * 221 * 0.8
      else
        total = @speed * 221 * 0.77
      end
      return total
    end
  
    def working_items_per_minute
      return (production_rate_per_hour / 60).floor
    end
  end
  