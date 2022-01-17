require_relative 'classes/student'

student = Student.new(name: "Abdelrhman" , last_name: "Haider" , phone: "0100000", age: 24, shcool_id: 43)

p "_" * 10
# p student.update_sc
p student.full_name



##########
#

p "#" * 8

hello =  Student.new(name: "Abdelrhman" , last_name: "Haider" , phone: "0100000", age: 24)
hello.shcool_id = 400
p "*" * 4
p hello

# p student.demo


test =  Student.new(name: "Maged" , last_name: "Haider" , phone: "0100000", age: 27)
p test

p Student.all

p Student.all.count

p "#" * 10

p Student.counter




p "#" * 35

p Student.dummy_data
p Student.all.count