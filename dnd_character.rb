class DndCharacter
    attr_accessor :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma

    def initialize
        @strength = random_stats
        @dexterity = random_stats
        @constitution = random_stats
        @intelligence = random_stats
        @wisdom = random_stats
        @charisma = random_stats
    end

    def self.modifier(bonus)
        (bonus - 10)/2
    end

    def hitpoints
        10 + self.class.modifier(@constitution)
    end

    def random_stats
        stats = []
        4.times do
            stats.push(rand(1..6))
        end
        stats.max(3).sum
    end
end