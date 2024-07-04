class Hobbit
    attr_reader :name,
                :disposition,
                :age

    def initialize(name, disposition = "homebody")
        @name = name
        @disposition = disposition
        @age = 0
    end

    def celebrate_birthday
        @age += 1
    end

    def adult?
        return true if age > 32
        false
    end

    def old?
        return true if age > 100
        false
    end
    def has_ring?
        return true if self.name == "Frodo"
        false
    end
    def is_short?
        true
    end
end