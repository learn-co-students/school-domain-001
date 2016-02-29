require 'pry'

class School
  attr_reader :school, :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(student, grade)
    if !@roster.keys.include?(grade)
      @roster[grade] = []
      @roster[grade].push(student)
    else
      @roster[grade].push(student)
    end
  end

  def grade(grade)
    students = []
    @roster[grade].each do |student|
      students.push(student)
    end
  end

  def sort
    @roster.each do |grade, students|
      students.sort!
    end
  end
end