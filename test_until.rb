#methods until: this method is for create to loop until the condition is false
respond =""
until respond == "n"
    puts "I am play this game"
    print "You dead, continue? y/n "
    respond = gets.chomp
end  
puts "Thanks, for play!"