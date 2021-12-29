def hello
    p "##########################"
    print "Please Add your X Value > "
    x = gets.chomp
    p "##########################"
    x == "exit" ? abort("Done Exit")  : x = x.to_i
    # Incase add without number ?
    if x > 5
        p "X Bigger 5"
    elsif x == 0
        p "Please  Add Your number Again that not number Value or 0 "
        hello
    else
        p "X Smaller than 5"
    end
end

def school
    p "####################################################"
    print "Wellcome to School let us how many your Students : "
    x = gets.chomp.to_i
    p "####################################################"

    x == 0 ? abort("Done Exit")  : x = x.to_i
    students = []
    x.times {|i|
        student = {}
        student_id = i + 1 
        p " Hello Student Number #{student_id}"
        student[:id] = student_id
        print "Please Add your name : "
        student[:name] = gets.chomp
        p "######### SAVED #######"
        print "Please Add your phone : "
        student[:phone] = gets.chomp

        students.push(student)
    }
    p "#######"
    p students
end
def looping
x = 2 
    while x <= 8
        p x
        if x == 4
            x += 2
            redo
        end
        x += 1 
        p "Done Collect"
    end
end
def first_method 
     "Hello Without return"
end
# p first_method
looping