class Werewolf
    attr_reader :name,
                :location

    attr_accessor :human,
                  :wolf
   
    def initialize(name, location = "New York City")
        @name = name
        @location = location
        @human = true
        @wolf = false
    end

    def human?
        @human = human
    end

    def wolf?
        @wolf = wolf
    end

    def change!
        if @human == true
            @human = false
            @wolf = true
        else 
            @human = true
            @wolf = false
        end
        
    end

end