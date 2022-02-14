def even_number(array)
  raise ArgumentError unless array.is_a?(Array)
  raise StandardError.new("Too few elements") if array.length == 0
  # array.find_all {|e| e.to_i % 2 == 0}
  array.select { |e| e.even? }
end
# begin
# even_number("w")
# rescue ArgumentError
#   puts " Arg Error"
# end
#
p even_number([1,2,5,6])#.join(",")
