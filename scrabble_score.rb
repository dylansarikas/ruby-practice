class Scrabble
    def initialize(str)
      @clean_str = str.downcase.chars
    end
  
    def score
      total = 0
      @clean_str.each do |str|
        case str
        when "a", "e", "i", "o", "u", "l", "n", "r", "s", "t" then total += 1
        when "d", "g" then total += 2
        when "b", "c", "m", "p" then total += 3
        when "f", "h", "v", "w", "y" then total += 4
        when "k" then total += 5
        when "j", "x" then total += 8
        when "q", "z" then total += 10
        end
      end
      return total
    end
end