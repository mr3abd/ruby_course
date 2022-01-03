## Print with multi data 
# student_data  = {
#     name: "Haider",
#     phone: "010000000"
# }





# def phone_and_name(data)

#     [data[:name] , data[:phone]]
# end

# name , phone = phone_and_name(student_data)

# p "Hello #{name} , your phone #{phone}"



## work with method send data to method 
# def method_name
#     if opertaion == "SUM"
#         ######
#     elsif opertaion == "DIVIDE"
#     elsif opertaion == "SUB"
#         ####
#     end

# end
## main_calculator with dynamic methods 
# def main_calculator(first , second , opertaion)
#     send(opertaion.downcase , first , second)
# end
# def sum(first , second)
#     first + second
# end

# def divide(first , second)
#     first / second
# end

# def sub(first , second)
#     first - second
# end

# x = 200 
# y = 300

# p sum(x , y)

# print "Please Add your first number : "
# first_number = gets.chomp.to_f

# print "Please Add your seond number : "
# second_number = gets.chomp.to_f
# print "Add your opertation please : "
# opertaion = gets.chomp.to_s
# p main_calculator(first_number , second_number , opertaion)
## inject_code vs map 

# p (1..7).map{ 
#     |n|
#     n + 1 
# }

# p (1..7).inject {
#     |current_elment , next_elment | 
#     current_elment + next_elment
# }

## Sort Method 
# (1..6)
## merge_data {}
# haider = { 
#     name: "Abdelrhman", 
#     last_name: "Haider"
# }
# yasser = {
#     name: " Yasser",
#     last_name: "Mohamed"
# }
# x = [haider , yasser]
# def merge_full_name(**data)
#     data.each{
#         |d|
#         d.merge!(full_name:"#{d[:name]}  #{d[:last_name]}" )
#     }
# end
#  merge_full_name(x)
# p x
## Args Array vs Hash  
 
def inject_code(**arg)
    # arg.inject{
    #     |c , n | 
    #     c + n 
    # }
    arg
end

p inject_code(name: "Hello" , last_name: "Haider")