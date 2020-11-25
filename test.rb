class School
  attr_accessor :roster, :add_student
  def roster
    @roster = {}
  end
  def add_student(name, grade)
    @roster[grade] = []
    @roster[grade] << name
  end
end
add_student("eric", 10, roster)
add_student("bill", 2, roster)

school = School.new
