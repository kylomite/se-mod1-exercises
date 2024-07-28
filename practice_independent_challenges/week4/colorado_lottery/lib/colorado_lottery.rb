class Coloradolottery
    attr_reader :registered_contestants, :winners, :current_contestants
    
    def initialize
        @registered_contestants = {}
        @winners = []
        @current_contestants = {}
    end

    def interested_and_18?(person, game)
        #person.age >= 18 && person.game_interests.include?(game) ? true : false
        if person.age >= 18 && person.game_interests.include?(game.name)
            true
        else 
            false
        end
    end

    def can_register?(name, game)

    end
end