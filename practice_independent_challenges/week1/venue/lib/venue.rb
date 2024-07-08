class Venue
  
    attr_reader :name,
                :capacity,
                :patrons
    
    def initialize(name, capacity)
        @name = name
        @capacity = capacity
        @patrons = []
    end

    def add_patron(name)
        @patrons.push(name)
    end

    def yell_at_patrons
        output = []
        @patrons.each{|patron|
            output.push(patron.upcase)
        }
        output
    end
end
