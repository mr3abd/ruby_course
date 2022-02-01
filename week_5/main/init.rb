require_relative 'classes/person'
require 'dotenv/load'

#
#
# class Person < ActiveRecord::Base
#   self.table_name = 'person'
#   self.primary_key = 'id'
# end
#
# # Create a new user object then save it to store in database
# new_user = Person.new(name: 'Dano')
# new_user.save
#
#
# p new_user
# # User.new { |u|
# #   u.name = 'NanoDano'
# #   u.age = 60
# # }.save
# #
# # # Create and save in one step with `.create()`
# # User.create(name: 'John Leon', age: 90)
# #
#
# conn.exec( "SELECT * FROM person" ) do |result|
#   puts "     PID | User             | Query"
#   result.each do |row|
#     puts " %7d | %-16s | %s " %
#            row.values_at('pid', 'usename', 'query')
#   end
# end
#

people = Person.all_json

# p people.first.first.split("")
p people

env_var = ENV["HELLO"] || "no value here"

p env_var