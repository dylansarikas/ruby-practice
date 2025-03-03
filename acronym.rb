class Acronym
    def self.abbreviate(phrase)
      phrase = phrase.sub(/[-]/, ' ').split(' ')
      abb = ""
      phrase.each do |word|
        abb = abb + word[0].upcase
      end
      return abb
    end
end