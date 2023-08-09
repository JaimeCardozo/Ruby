#method loop: this loop respeat the script until find the work "break" 
loop do
    puts "do you Wish continue play? yes = y"
    respon = gets.chomp
    if  respon != "y"
    puts "Hi wordl"
    puts "You continue..."
    else 
        puts "Thanks for play"
        break
    end
end