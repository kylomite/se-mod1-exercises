class Centaur
    attr_reader :name,
                :breed,
                :shoot,
                :cranky,
                :run,
                :sleep,
                :laying,
                :standing
    
    attr_accessor :tire,
                  :laydown,
                  :stand_up

    def initialize(name, breed)
        @name = name
        @breed = breed
        @cranky = false
        @standing = true
        @tire = 0
        @laying = false
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
end