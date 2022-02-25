require 'securerandom'
require 'fileutils'

# let's do File for handle path
path = File.join("path" , "test" , "hello.txt")
path2 = File.join("path" , "test" , "test.txt")
path3 = File.join("path" , "test" , "renaming.txt")
new_path3 = File.join("path" , "test" , "renaming_yes.txt")
p path
p __dir__
p __FILE__

p File.expand_path(__FILE__ )
# =
p __dir__ + "/"+ __FILE__
# =
p File.join(__dir__ , __FILE__ )
#####
p File.dirname(__FILE__ ) # Result (.) dot
p "_" * 20
# File.open vs File.new
#
# w vs r vs a
File.open(path , 'w') do |file|
  #work with file
  p file
  file.close
end
token = SecureRandom.base64(40)

new_file = File.new('token.txt' , 'w')
new_file.print token
new_file.puts "woow"
new_file.write "Here \n"
new_file<< "No"
new_file.close
p new_file

p "#" * 20

# read_file = File.new('token.txt' , 'r')
# p read_file.read(40)
p "_" * 20
###
# p read_file.read

# p read_file.gets.chomp


p "$" * 50
# File.open(path2 , 'r') do |file|
#   while line = file.gets
#     puts line.chomp
#   end
# end

File.open(path2 , 'r') do |file|
  file.each_line do |line|
    p line.chomp
  end
end

p "_-" * 20
p File.read path2
p "_-" * 20
File.write(path2 , "JUST TESTING")
p File.readlines(path2)

p "h" * 7
p File.size(path2).to_s + " bytes"


###
File.new(path3, 'w')
p File.readable?(path3)
File.rename(path3 , new_path3)

File.delete(new_path3)

# Copy or move or remove
FileUtils.copy('token.txt' , 'copy_token.txt')