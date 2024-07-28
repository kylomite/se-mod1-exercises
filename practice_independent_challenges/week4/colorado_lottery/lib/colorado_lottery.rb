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

    def can_register?(name, game)
        if interested_and_18?(name, game) == true
            if game.national_drawing? == true
                true
            else 
                true if name.state_of_residence == "CO"
            end
        else 
            false
        end
    end
end