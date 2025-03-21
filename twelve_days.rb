class TwelveDays
    ORDINALIZE_MAPPING = {
      1 => ["first", " and a Partridge in a Pear Tree.\n\n", " a Partridge in a Pear Tree.\n\n"],
      2 => ["second", " two Turtle Doves,"],
      3 => ["third", " three French Hens,"],
      4 => ["fourth", " four Calling Birds,"],
      5 => ["fifth", " five Gold Rings,"],
      6 => ["sixth", " six Geese-a-Laying,"],
      7 => ["seventh", " seven Swans-a-Swimming,"],
      8 => ["eighth", " eight Maids-a-Milking,"],
      9 => ["ninth", " nine Ladies Dancing,"],
      10 => ["tenth", " ten Lords-a-Leaping,"],
      11 => ["eleventh", " eleven Pipers Piping,"],
      12 => ["twelfth", " twelve Drummers Drumming,"]
    }
    
    def self.song
      total = ""
      (1..12).each do |n|
        current_day = n
        output = "On the #{ORDINALIZE_MAPPING[current_day][0]} day of Christmas my true love gave to me:"
        while current_day >= 1
          n == 1 ? output += ORDINALIZE_MAPPING[current_day][2] : output += ORDINALIZE_MAPPING[current_day][1]
          current_day -= 1
        end
        total += output
      end
      return total[0..-2]
    end
    
end
  