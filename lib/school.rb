class School
  
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade_level)
    if @roster[grade_level]
      @roster[grade_level] << name
    else 
      @roster[grade_level] = []
      @roster[grade_level] << name
    end
  end
  
  
  def grade(grade_level)
    @roster[grade_level]
  end
  
  def sort
    sorted_grades = {}
    @roster.each do |name, grade_level|
      sorted_grades[grade_level] = name.sort
    end
  end
end
