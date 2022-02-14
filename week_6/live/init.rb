require 'date'
require_relative 'classes/date'
require_relative 'classes/person'
require_relative 'classes/customer'
d = Piner::Date.new
 d.location = "Cairo"
p d


p = Person.new
p.first_name = "Abdelrhman"
p.last_name = "Haider"

p p

customer = Customer.new
customer.first_name = "Ahmed"
customer.last_name = "Zyad"

p customer