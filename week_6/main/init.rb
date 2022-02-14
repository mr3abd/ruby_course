require_relative 'classes/person'
require_relative 'classes/student'
require_relative 'shared_methods/naming'
person = Person.new
p person.first_name = "Abdo"
p person.last_name = "Haider"
p  "#" * 5

p person.full_name


#####
student = Student.new
student.first_name = "Yasser"
student.last_name = "Moh"
p "#" * 5

p student.full_name