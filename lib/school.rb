require 'pry'
class School

def initialize(name)
  @name = name
  @roster = {}
end

def roster
  @roster
end

def add_student(name, grade)

  if @roster[grade] == nil
    @roster[grade] = []
    @roster[grade] << name
  else
    @roster[grade] << name
  end
end

def grade(number)
  @roster[number]
end

def sort
  sorted_hash = {}
  all_grades = @roster.keys
  all_grades.count
  counter = 0 
  until counter >= all_grades.count
    current_grade = all_grades[counter]
    sorted_hash[current_grade] = @roster[current_grade].sort
    counter += 1
  end

  sorted_hash
end

end