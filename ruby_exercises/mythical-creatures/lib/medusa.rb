class Medusa 
    attr_reader :name,
                :statues,
                :stare
    
    def initialize(name)
        @name = name
        @statues = []
    end

    def stare(person)
        if @statues.length < 3
            @statues.push(person)
            person.stoned = true
        else
            @statues[0].stoned = false
            @statues.shift
            @statues.push(person)
            person.stoned = true
        end
    end
end

class Person
    attr_accessor :stoned
    
    attr_reader :name
    
    def initialize(name)
        @name = name
        @stoned = false
    end

    def stoned?
        @stoned = stoned
    end

end