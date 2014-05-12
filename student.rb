class Student
 
  attr_reader :first_name, :last_name, :grade
  def initialize(first_name, last_name, grade)
    @first_name = first_name
    @last_name = last_name
    @grade = grade
  end

  def senior?
    grade == 12
  end

  def junior?
    grade == 11
  end

  def to_s
    "#{last_name}, #{first_name}, #{grade}"    
  end
end

def seniors(students)
  students.select { |student| student.senior? }
end

def juniors(students)
  students.select { |student| student.junior? }
end

tim = Student.new("jack", "gong", 11)
fred = Student.new("fred", "james", 12)
jane = Student.new("sarah", "smith", 12)
all_students = [tim, fred, jane]

puts "Seniors"

seniors(all_students).each do |student|
  puts student
end 

puts "Juniors"

juniors(all_students).each do |student|
  puts student
end 