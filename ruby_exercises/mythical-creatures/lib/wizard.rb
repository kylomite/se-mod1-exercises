class Wizard
    attr_reader :name,
                :bearded,
                :rested,
                :mana

    def initialize(name, bearded: true)
        @name = name
        @bearded = bearded
        @rested = true
        @mana = 3
    end

    def bearded?
        bearded
    end

    def incantation(string)
        string.prepend("sudo ")
    end

    def rested?
        if @mana ==0
            @rested = false
        else
            true
        end
    end

    def cast
        if @mana == 0
            return "I am too tired"
        else
            @mana -= 1
            return "MAGIC MISSILE!"
        end

    end

end