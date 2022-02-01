require_relative 'classes/student'
require 'dotenv/load'



s = Student.say_hello

p s


# ENV

p ENV["NAME"]