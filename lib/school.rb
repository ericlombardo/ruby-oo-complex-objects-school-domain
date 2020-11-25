 require 'pry'

class School
  # add reader and writer methods for the instance methods
  attr_accessor :add_student, :grade, :sort, :roster
  #create @school and @roster instance variable
  def initialize(school)
    @school = school
    @roster = {}
  end
  def add_student(name, grade)
    # sets @roster[grade] = [] if key !exist already
    @roster[grade] ||= []       
    # pushes name into array of correct grade key
    @roster[grade] << name
  end

  def grade(grade)
    # returns name array for grade requested
    @roster[grade]
  end

  def sort
    @sorting = {} # create empty hash to fill
    @roster.each do |grade, names| # loop through grades
      @sorting[grade] = names.sort # assign key:values(sorted) to @sorting hash
    end
    @sorting  # return sorted @sorting hash
  end
end
