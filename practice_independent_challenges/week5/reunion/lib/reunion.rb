class Reunion
    attr_reader :name, :activities

    def initialize(name)
        @name = name
        @activities = []
    end

    def add_activity(activity)
        @activities << activity
    end

    def total_reunion_cost
        total = 0
        @activities.each do |activity|
            total += activity.total_cost
        end
        total  
    end
end