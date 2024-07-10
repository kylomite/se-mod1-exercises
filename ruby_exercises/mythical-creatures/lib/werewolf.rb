#require './spec/werewolf_spec'

class Werewolf
    attr_reader :name,
                :location,
                :consume

    attr_accessor :human,
                  :wolf,
                  :hungry
   
    def initialize(name, location = "New York City")
        @name = name
        @location = location
        @human = true
        @wolf = false
        @hungry = false
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
            @hungry = true
        else 
            @human = true
            @wolf = false
        end
    end

    def hungry?
        @hungry = hungry
    end

    def consume(victim)
        victim.status = :dead
    end

end