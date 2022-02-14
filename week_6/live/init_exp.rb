def even_number(array)
  raise ArgumentError unless array.is_a?(Array)
  raise StandardError.new("your array haven't elments ") if array.length == 0
  array.select {|a| a.even? }
end
# def divide(x, y)
#   begin
#     x / y
#
#   rescue => e
#     p "#{e.class} ++ More details #{e.message}"
#   end
# end
# begin
#    divide(3 , "HELLO")
# rescue ArgumentError
#   p "Miss Data"
# rescue
#   p "Normal"
# end
#


arr = [1 , 2 ,3 , 4 ,5 ,6 ,7 , 8 , 9 ,10]
p even_number(arr)