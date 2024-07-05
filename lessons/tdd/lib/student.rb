class Student
    attr_reader :name,
                :mod,
                :skills,
                :promote


    def initialize(name, mod)
        @name = name
        @mod = mod.to_s
        @skills = []
    end

    def say_mod
        "I'm in Mod #{mod}"
    end

    def learn(skill)
        @skills.push(skill)
    end

    def promote
        if @mod == "4"
            @mod = "Graduate!"
        elsif @mod == "3"
            @mod = "4"
        elsif @mod == "2"
            @mod = "3"
        else
            @mod = "2"
        end
    end

end