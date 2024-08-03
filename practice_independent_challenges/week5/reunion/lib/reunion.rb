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

    def calculate_total_owed
        output = {}
        @activities.each do |activity|
            activity.participants.each do |name, money_paid|
                if !(output.keys.include?(name))
                    output[name] = 0
                end
            end
            temp_counter = activity.owed
            temp_counter.each do |individual, money_due|
                output[individual] += money_due
            end
        end
        output
    end

    def print_participants_dues
        data = calculate_total_owed
        output = ""
        data.each do |name, dues|
        output << ("#{name} owes $#{dues}\n")
        end
        output
    end
end