require_relative 'classes/student'
haider = Student.new(name: "Haider" , phone: "012000000" , address: "Alex " , age: 25)
haider2 = Student.new(name: "Haider" , phone: "012000000" , address: "Alex " , age: 25)
haider3 = Student.new(name: "Haider" , phone: "012000000" , address: "Alex " , age: 25)
haider4 = Student.new(name: "Haider" , phone: "012000000" , address: "Alex " , age: 25)
haider5 = Student.new(name: "Haider" , phone: "012000000" , address: "Alex " , age: 25)
haider6 = Student.new(name: "Haider" , phone: "012000000" , address: "Alex " , age: 25)
haider7 = Student.new(name: "Haider" , phone: "012000000" , address: "Alex " , age: 25)
# p haider.say_hello
# p "#" * 5
# p Student.say_hello
# p haider.phone
# haider.phone = "999999"
# p haider
# @haider = Student.new(name: "Haider" , phone: "012000000" , address: "Alex " , age: 25)
# @@student
# p haider.name
# haider.name = "Abdelrhman"
# p "#" * 5
#
# p haider.name
#
#


#
# p haider.name = "Abdo"
# p haider.name
#
# p haider
#
#
#

p Student.say_hello

p "#" * 5

p haider.show_your_private

p Student.all.count
p "#" * 7

p Student.counts


 # Student.all.each do |student|
 #   p "Hello #{student.name}"
 # end