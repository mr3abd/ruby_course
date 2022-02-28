# p "Dir"
# p __dir__
#
# p "File"
#
# p __FILE__
#
# p "Dir/File"
# p __dir__ +  "/" + __FILE__
#
# path = File.join(".." , "main" , "path", "test" , "hello.txt")
#
# p path
#
# # Expand Path
# #
# p File.expand_path(path )
#
# p "#" * 5
#
# p File.dirname(path ) # Result (.) dot
#
#
# new_path = File.join("test_folders" , "hello.txt")
# test_path = File.join("test_folders" , "0hello.txt")
#
# File.open(new_path , 'w') do |file|
#   file.puts " Hello Yes I can See you"
#   file.puts "\n No or yes ?"
#   file.puts " Hello let's edit "
#   file.puts "Write--- ok"
#   file.close
# end
#
#
#
# File.open(new_path , 'r') do |file|
#   p "Maged Ask"
#   p file.read(4)
#   p file.read(4)
#   p file.read(4)
# end
#
# p "Array"
#  File.readlines(new_path).each do |line|
#   p line
# end
#
# p File.readable?(test_path) # read
#
#
# File.open(new_path , 'r') do |file|
#   p  file.gets
#   p  file.gets
#   p  file.gets
#   # while line = file.gets
#   #   puts line.chomp
#   # end
# end
#
#
# p File.size(new_path).to_s + " bytes"
#
#
# copy_file = File.join("test_folders" , "hello.txt")
# ####
# # File.delete(delete_file)
# # File.rename(rename_file , "haider.txt")
# # Copy or move or remove
# # FileUtils.copy('token.txt' , 'copy_token.txt')
# new_path_copied = File.join("test_folders" , "ror_dev.txt")
# require 'fileutils'
# FileUtils.copy(copy_file , new_path_copied)
#
# # check https://ruby-doc.org/core-2.5.0/File.html
#
# JSON ERB
require 'json'
json_path = File.join("json" , "us_presidents.json")
open_json = File.read(json_path)
json_data = JSON.parse(open_json)

p json_data["us_presidents"].count
new_json_path = File.join("json" , "students.json")
json_message = {student: {name: "Haider" , age: 25 , phone: 0000000}}
File.write(new_json_path , json_message.to_json)

# ERB
require 'erb'

# @name = "Haider"
# template = "<h1> Hello <%= @name  %> <%= 1 +1 %></h1>"
#
# renderer = ERB.new(template)
#
# puts renderer.result
#

#Class

p "#" * 4

class Customer
  attr_accessor :first_name, :last_name, :email
end

@customer = Customer.new
@customer.first_name = "Abdelrhman"
@customer.last_name = "Haider"
@customer.email = "abdo@7dr.me"

file_path = 'html_erb/test.html.erb'
template = File.read(file_path)
outputs = ERB.new(template)
p outputs.result
