def get_arr
    [2 , 4]
end

first_v , last_v = get_arr
p "First Value is #{first_v} and last #{last_v}"

##################################
######### main_calculator ########
def main_calculator
first_number , second_number , opertaion = wellcome_input
calculator(first_number , second_number , opertaion)
end
def wellcome_input
    p "############"
    p " First program to make any opertaion with ruby "
    print "Add your first Number : "
    first_number = gets.chomp.to_i
    print "Add Second Numbeer : "
    second_number = gets.chomp.to_i

    p " What you want to make with that numbers ? "
    p "SUM"
    p "DIVIDE"
    p "SUB"
    print "Please Tell us whats your opertation with two numbers ? "
    opertaion = gets.chomp.downcase
    [first_number , second_number , opertaion]
end

def calculator(first_number , second_number , opertaion)
   p send(opertaion , first_number , second_number)
end

def sub(first_number , second_number)
    first_number - second_number
end
def sum(first_number , second_number)
    first_number + second_number
end
def divide(first_number , second_number)
    first_number / second_number
end
# main_calculator


################

# inject_code

def inject_code
    counter = (1..5)
 p  counter.inject { |c , n | 
    n + c
}
p counter

p counter.collect {
    |c | 
    c + c
}
p counter

p counter.map{
    |c | 
    c + c
}
p counter
end
inject_code

# Sort Method 
def sort_method
    p " Sorting ..."
    p arr =  [6 , 4 , 5 , 7]
    p "Defualt arr"
    p "Start Sorting "
    p arr.sort{ |v1 , v2 | v1 <=> v2 }
    p arr 
    p "Sorting "
    p arr.sort!{ |v1 , v2 | v1 <=> v2 }
    p arr 
end
sort_method

def merge_data
    haider = {first_name: "Abdelrhman" ,
            sec_name: "Haider" }
    ahmed = {first_name: "Ahmed" , sec_name: "Yasser"}
    students_data =  [haider , ahmed]
    # In Case want improve my data format hash 
    students_data.each {
        |s|
        s.merge!({full_name: "#{s[:first_name]} #{s[:sec_name]}"})
    }
    p students_data
end
merge_data


## Args 

def args_method(*arg)
    p arg.count
end
p "ARRRGS TEST"
args_method("Haider" , 2 , 5 ,6)

def arg_hash(**arg)
    p arg
end

p "Test with hashes "
arg_hash(name: "Haider" , age: 18 , phone: "012200000")