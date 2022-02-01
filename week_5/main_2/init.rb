require 'pg'
require 'active_record'
ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  host: 'localhost',
  username: 'ruby_kit',
  password: 'ruby_kit',
  database: 'school'
)

# require 'active_record'
# P
# ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'test.db')

# Expects a table named `users`  by convention
# Example SQLite3 statement to create table:
# CREATE TABLE IF NOT EXISTS users (name TEXT, age INT);
class Person < ActiveRecord::Base
end

p "#" * 3
p user = Person.create(name: "h" , id: 3)

p user


p Person.all