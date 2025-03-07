class Phrase
    def initialize(phrase)
      @phrase = phrase.scan(/\b[\w']+\b/).map{ |word| word.downcase }
    end
  
    def word_count
      @phrase.tally
    end
end