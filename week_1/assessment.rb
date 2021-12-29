# just return students who's have id when plus next student id will be small than 10
# make demo with ids from 4 until 15 students  
# will help you https://apidock.com/ruby/Array/


students = [
    {
        id: 4,
        name: "Ahmed"
    },
    {
        id: 5,
        name: "Yasser"
    } ,
    {
        id: 6,
        name: "Haider"
    },
    {
        id: 7, 
        name: "Yazen"
    },
    {
        id: 8, 
        name: "Ahmed"
    } ,
    {
        id: 9, 
        name: "Ahmed"
    },
    {
        id: 10, 
        name: "Ahmed"
    },
    {
        id: 11, 
        name: "Ahmed"
    },
    {
        id: 12, 
        name: "Jhon"
    },
    {
        id: 13, 
        name: "Osama"
    },
    {
        id: 14, 
        name: "Hassan"
    },
    {
        id: 15, 
        name: "Mohamed"
    }
]


selceted_students = []
students.each_cons(2) {|currentStudent,nextStudent|
        selceted_students.append(currentStudent) if (currentStudent[:id] + nextStudent[:id]) < 10}
        
 
p selceted_students

# Second Solution :D 

# new_students = []
# for x in 0..students.length-1 do
#     next_element = students[x+1]
#     if  next_element != nil && students[x].fetch(:id) + next_element.fetch(:id) < 10
#         puts students[x].fetch(:id) + next_element.fetch(:id)
#         new_students << students[x]
#     end
   
# end
# puts new_students
 
#  puts students.keep_if{|key| students[1+ students.find_index(key)] != nil && key.fetch(:id) + students[1+ students.find_index(key)].fetch(:id) <10}

