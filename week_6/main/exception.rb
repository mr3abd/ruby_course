# ref from https://ruby-doc.org/core-2.5.1/Exception.html
#
def divide_adv(x,y)
  begin
    puts x / y
  rescue => e
    puts "That #{e.class} and details #{e.message}"
  end
end
def divide_normal(x , y)
  begin
    puts x / y
  rescue
    puts "Normal Somthing Wrong"
  end
end

def divide(x , y)
  begin
    puts x / y
  rescue ZeroDivisionError
    puts "ZeroDivisionError  Shouldn't be 0"
  rescue TypeError,ArgumentError
    puts "TypeError handled"
  rescue
    puts "Somthing Wrong"
  end
end

divide_normal(1 , 0)
divide(1, 1)
divide(1, 0)
divide(1, 1)
divide_adv(1, 'Hello')



divide_adv(1, 0)

begin
  divide(1) #ArgumentError
rescue TypeError,ArgumentError
  puts "TypeError handled"
end
