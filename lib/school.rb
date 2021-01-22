class School

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(student, grade)
        if !@roster.key?(grade)
            @roster[grade] = []
        end
        @roster[grade].push(student)
    end

    def grade(grade_num)
        return @roster[grade_num]
    end

    def sort
        @roster.each_key {|key| @roster[key] = @roster[key].sort }
        return @roster
    end

end