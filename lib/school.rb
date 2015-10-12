# code here!
class School
  attr_accessor :school, :roster
  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(name, num)
    roster[num] ||= []
    roster[num] << name
  end

  def grade(num)
    roster[num]
  end

  def sort
    ros = {}
    roster.sort.each do |x|
      ros[x[0]] ||= []
      x[1].sort.each do |y|
        ros[x[0]] << y
      end
    end
    ros
  end

end
