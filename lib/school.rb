require 'pry'

# a domain model is a representation of real-world concepts in software.
# classes can be templates for object creation
# a class can rpoduce objects taht have attributes/ behaviors, enacted by instance methods

class School 

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, student_grade)
    # binding.pry
    @roster[student_grade] ||= []
    @roster[student_grade] << student_name
  end

  def grade(class_grade)
    @roster.each do |stud_grade, stud_name|
      # binding.pry
      if stud_grade == class_grade
        return stud_name
      end
    end
  end

  def sort
    @roster.each do |stud_grade, stud_name|
      stud_name.sort!
    end
  end

end