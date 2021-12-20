# Basic with Printing 
puts "Worked"
print "Worked"
p "Worked"
    # print vs puts with inspect 
# Baisc with Varibles 
name = "Haider"
p "my name is #{name}"

# Check Data Type Integer or String or Float 
name.is_a?(String) # true
# Convert Data Type


# Array 
names = [ "Haider" , "Ahmed" , "Yazen"]
names.each {|name| p "Hey #{name}"}

# Finding 
p names[0]
# First & Last 
names.first || names.second || names.last(2)
# each {} or each do 

# Counting or Length 
p names.count || count.length
yasser = "Yasser"
names.push(yasser)
names.each {|name| p "Hey #{name}"}

# Hashes More Data for Student 

students = []
yasser = {name: "Yasser" , age: 17 , phone: "2000012121" , city: "Cairo"}
yazen = {name: "Yazen" , age: 17 , phone: "20001213342" , city: "Alex"}

students.push(yasser)
students.push(yazen)
students.each do|student|  
    p "My Name #{student[:name]} and Age #{student[:age]} and my City #{student[:city]} and take my phone #{student[:phone]}"
end
#

# Range 
x = 1..5
arr = [*x]
#  h.keep_if {|key, value| key % 2 == 0} # or h.delete_if {|key, value| key % 2 != 0}
# 