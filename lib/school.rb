# code here!

class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        if @roster[grade] == nil
            @roster[grade] = []
            @roster[grade] << student
        else
            @roster[grade] << student
        end
    end

    def grade(grade_searching)
        @roster[grade_searching]
    end

    def sort
        for grade, students in @roster
            @roster[grade] = students.sort
        end
    end
end