class Human

    attr_reader :name
     
    attr_accessor :encounter_counter,
                  :apologized_to

    def initialize(name = "Jane")
        @name = name
        @encounter_counter = 0
        @notices_ogre = false
        @knocked_out = false
        @apologized_to = 0
    end

    def notices_ogre?
        if @encounter_counter % 3 == 0
            @notices_ogre = true
        else
            @notices_ogre = false
        end
    end

    def knocked_out?
        if @encounter_counter % 6 == 0 && @apologized_to.even?
            @knocked_out = true
        else 
            @knocked_out = false
        end
    end
end