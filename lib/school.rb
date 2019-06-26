# code here!
class School
  attr_accessor :name, :roster
  #attr_writer :student, :grade

  def initialize(name, roster={})
    @name = name
    @roster = roster
  end

  def add_student(arg1, arg2)
    if !@roster[arg2]
      @roster[arg2] = Array.new
      @roster[arg2].push(arg1)
    else
      @roster[arg2].push(arg1)
    end
  end

  def grade(grade)
    return @roster[grade]
  end

  def sort
    hsh = {}
   @roster.keys.sort.map.each do |key|
      hsh[key] = @roster[key].sort
    end
    return hsh
  end
end