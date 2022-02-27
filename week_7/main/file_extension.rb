# JSON + ERB
require 'erb'
@name = "Haider"
template = "<h1> Hello <%= @name  %></h1>"

renderer = ERB.new(template)

puts renderer.result

p "#" * 4

class Customer
  attr_accessor :first_name, :last_name, :email
end

@customer = Customer.new
@customer.first_name = "Abdelrhman"
@customer.last_name = "Haider"
@customer.email = "abdo@7dr.me"

file_path = 'erb/test.html.erb'
template = File.read(file_path)
outputs = ERB.new(template)
p outputs.result

# ------
# Json
require 'json'
# Write
json_wirte = {h: "Hello "}.to_json
File.write('json/test.json', json_wirte)

# Read
json_read = File.read("json/us_presidents.json")

hash = JSON.parse(json_read)

p hash["us_presidents"].count