require 'pry'

class School

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  attr_accessor :school_name, :roster

  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |key, value|
      @roster[key] = value.sort
    end
  end
end