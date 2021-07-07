
class School

  school = School.new

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if @roster[grade]
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(level)
    @roster[level]
  end

  def sort
    @roster.each {|level, students| students.sort! }
  end
end


