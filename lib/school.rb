# code here!

class School
  attr_accessor :school_name, :roster
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def roster
    return @roster
  end

  def add_student(student, grade)
    roster[grade] ||= []
    @roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      @roster[grade] = students.sort
    end
  end
end