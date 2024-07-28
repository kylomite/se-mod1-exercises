class Coloradolottery
    attr_reader :registered_contestants, :winners, :current_contestants
    
    def initialize
        @registered_contestants = {}
        @winners = []
        @current_contestants = {}
    end

    def interested_and_18?(person, game)
        person.age >= 18 && person.game_interests.include?(game.name) ?
        true : false
    end

    def can_register?(person, game)
        if interested_and_18?(person, game) 
            if game.national_drawing? 
                true
            else 
                true if person.state_of_residence == "CO"
            end
        else 
            false
        end
    end

    def register_contestant(person, game)
        if can_register?(person, game)
            @registered_contestants[game.name] = person
        end
    end
end