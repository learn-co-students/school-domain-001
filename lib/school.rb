class School

  attr_reader :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] = [] if !@roster.key?(grade)
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sort = {}
    @roster.each {|k, v| sort[k] = v.sort}
    sort
  end

end
      school = School.new("Test School")
      school.add_student("Homer Simpson", 9)
      school.add_student("Bart Simpson", 9)
      school.add_student("Avi Flombaum", 10)
      school.add_student("Jeff Baird", 10)
      school.add_student("Blake Johnson", 7)
      school.add_student("Jack Bauer", 7)
      puts school.sort