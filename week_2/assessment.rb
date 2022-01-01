# Make Small Game with Random Add Random number from 1 to 7 as random 
# and make 3 opportunities to guess correct number 
# if user submit correct number reutrn Success ! 
# if not correct reutrn InCorrect Answer your can Gusse '3' times and that '3' number dynamix
# Sub per InCorrect Guess
puts "Welcome to Random Game"
puts "======================" 

def game
    puts "you have 3 chances to guess the correct number between 1 to 7"
    puts "============================================================="
    puts "Good Luck!"
    random_num =rand(1..7)
    
    3.times{ |iter|
        print "try ##{iter+1}: "
        ur_guess = gets.chomp
        
        if !ur_guess.to_i.between?(1,7)
            puts "Please Enter a number between 1 to 7"
            redo
        end

        if ur_guess.to_i == random_num
            return "Success! ^_^"
        else 
            puts "Wrong answer! :("
            puts "You have another chance"
        end
    }
    puts "You failed to guess the correct number it was #{random_num} :("
    return "Failed :("
end

puts game
 








