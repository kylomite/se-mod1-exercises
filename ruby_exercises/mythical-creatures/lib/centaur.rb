class Centaur
    attr_reader :name,
                :breed,
                :shoot,
                :cranky,
                :run,
                :sleep,
                :laying,
                :standing,
                :stand_up,
                :laydown,
                :tire,
                :drink_potion,
                :sick

    def initialize(name, breed)
        @name = name
        @breed = breed
        @cranky = false
        @standing = true
        @tire = 0
        @laying = false
        @sick = false
    end

    def shoot
        if @tire >= 3 || @laying == true
            "NO!"
        else
            @tire += 1
        "Twang!!!"
        end
    end

    def run
        if @laying == true
            "NO!"
        else
            @tire += 1
            "Clop clop clop clop!"
        end

    end
    
    def cranky?
        if @tire >= 3
            @cranky = true
            true
        else
            @cranky = false
            false
        end
    end
    
    def standing?
        @standing
    end

    def laying?
        @laying
    end

    def sleep
        if @standing == true
            "NO!"
        else
            @tire = 0 
        end
    end

    def lay_down
        @standing = false
        @laying = true
    end

    def stand_up
        @standing = true
        @laying = false
    end

    def drink_potion
        if @laying == true
            "NO!"
        else
            if @tire ==  0
                @sick = true
                "BLEH I'm sick now, this is just great..."
            else
                @tire = 0
            end
        end
    end

    def sick?
        @sick
    end
end