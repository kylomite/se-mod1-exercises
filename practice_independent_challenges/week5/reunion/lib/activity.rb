class Activity
    attr_reader :name, :participants

    def initialize(name)
        @name = name
        @participants = {}
    end

    def add_participant(name, money_paid)
        if !(@participants.keys.include?(name))
            @participants[name] = 0
            @participants[name] += money_paid
        else 
            @participants[name] += money_paid
        end
    end
    
    def total_cost
        @participants.sum {|name, money_paid| money_paid}
    end

    def split
      total_cost / @participants.keys.length
    end
end